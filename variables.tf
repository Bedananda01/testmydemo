###############################################################################
# Azure DevOps Pipeline — SCB APIM Infrastructure (PREPROD)
#
# This pipeline contains a ONE-TIME FIX to import existing resources and
# includes the chmod command to fix provider permission errors.
#
###############################################################################

trigger:
  branches:
    include:
      - develop
      - feature/*
      - bugfix/*
  paths:
    include:
      - infra/environments/preprod/**
      - infra/modules/**
      - infra/pipelines/**

pr:
  branches:
    include:
      - develop

pool:
  vmImage: 'ubuntu-latest'

variables:
  - group: scb-apim-common
  - name: terraformVersion
    value: '1.9.5'
  - name: serviceConnection
    value: 'scb-preprod-sp-connection'
  - name: workingDir
    value: '$(System.DefaultWorkingDirectory)/infra/environments/preprod'
  - name: isDevelop
    value: ${{ eq(variables['Build.SourceBranch'], 'refs/heads/develop') }}

###############################################################################
# Stage 1: VALIDATE — Runs on ALL triggers (PRs + pushes)
###############################################################################
stages:
  - stage: Validate
    displayName: '🔍 Validate'
    jobs:
      - job: ValidateTerraform
        displayName: 'Format Check & Validate'
        steps:
          - checkout: self
          - script: |
              echo "═══════════════════════════════════════════"
              echo "  Branch:  $(Build.SourceBranch)"
              echo "  Reason:  $(Build.Reason)"
              echo "  Commit:  $(Build.SourceVersion)"
              echo "═══════════════════════════════════════════"
              curl -fsSL https://releases.hashicorp.com/terraform/$(terraformVersion)/terraform_$(terraformVersion)_linux_amd64.zip -o /tmp/terraform.zip
              sudo unzip -o /tmp/terraform.zip -d /usr/local/bin/
              terraform version
            displayName: 'Install Terraform'

          - task: AzureCLI@2
            displayName: 'Terraform Format Check'
            inputs:
              azureSubscription: $(serviceConnection)
              scriptType: bash
              addSpnToEnvironment: true
              failOnStandardError: false
              workingDirectory: $(workingDir)
              scriptLocation: inlineScript
              inlineScript: |
                echo "Checking Terraform format..."
                terraform fmt -check -recursive ../../modules/ || {
                  echo "⚠️  Format check failed. Run 'terraform fmt -recursive' locally."
                  echo "Continuing — format issues are warnings, not blockers."
                }
                terraform fmt -check . || true
                
          - task: AzureCLI@2
            displayName: 'Terraform Validate'
            inputs:
              azureSubscription: $(serviceConnection)
              scriptType: bash
              addSpnToEnvironment: true
              failOnStandardError: false
              workingDirectory: $(workingDir)
              scriptLocation: inlineScript
              inlineScript: |
                set -euo pipefail
                export ARM_CLIENT_ID=$servicePrincipalId
                export ARM_CLIENT_SECRET=$servicePrincipalKey
                export ARM_TENANT_ID=$tenantId
                export ARM_SUBSCRIPTION_ID=$(PREPROD_SUBSCRIPTION_ID)
                terraform init -backend=false
                terraform validate
                echo "✅ Terraform validation passed"

###############################################################################
# Stage 2: PLAN (with FINAL ONE-TIME-FIX)
###############################################################################
  - stage: Plan_PreProd
    displayName: '📋 Plan PreProd (with FINAL ONE-TIME-FIX)'
    dependsOn: Validate
    condition: |
      and(
        succeeded(),
        ne(variables['Build.Reason'], 'PullRequest'),
        eq(variables['Build.SourceBranch'], 'refs/heads/develop')
      )
    jobs:
      - job: PlanPreProd
        displayName: 'Terraform Plan — PreProd'
        steps:
          - checkout: self
          - script: |
              curl -fsSL https://releases.hashicorp.com/terraform/$(terraformVersion)/terraform_$(terraformVersion)_linux_amd64.zip -o /tmp/terraform.zip
              sudo unzip -o /tmp/terraform.zip -d /usr/local/bin/
            displayName: 'Install Terraform'

          - task: DownloadSecureFile@1
            name: preprodCert
            inputs:
              secureFile: 'apim-stage.pfx'

          - task: AzureCLI@2
            displayName: 'Terraform: Init, Import & Plan (FINAL ONE-TIME-FIX)'
            inputs:
              azureSubscription: $(serviceConnection)
              scriptType: bash
              addSpnToEnvironment: true
              failOnStandardError: true
              workingDirectory: $(workingDir)
              scriptLocation: inlineScript
              inlineScript: |
                set -euo pipefail
                export ARM_CLIENT_ID=$servicePrincipalId
                export ARM_CLIENT_SECRET=$servicePrincipalKey
                export ARM_TENANT_ID=$tenantId
                export ARM_SUBSCRIPTION_ID=$(PREPROD_SUBSCRIPTION_ID)
                export TF_VAR_certificate_base64=$(base64 -w 0 $(preprodCert.secureFilePath))
                export TF_VAR_certificate_password="$(PREPROD_CERT_PASSWORD)"

                echo "══════════════════════════════════════════════"
                echo "  1. TERRAFORM INIT"
                echo "══════════════════════════════════════════════"
                terraform init \
                  -backend-config=backend.tfvars \
                  -backend-config="subscription_id=$(PREPROD_SUBSCRIPTION_ID)" \
                  -backend-config="tenant_id=$tenantId" \
                  -backend-config="client_id=$servicePrincipalId" \
                  -backend-config="client_secret=$servicePrincipalKey"
                
                # THIS IS THE CRITICAL FIX for 'permission denied' errors
                echo "Setting execute permissions on providers..."
                chmod -R +x .terraform/providers/

                echo ""
                echo "══════════════════════════════════════════════"
                echo "  2. IMPORTING RESOURCES (ONE-TIME-FIX)"
                echo "══════════════════════════════════════════════"
                
                TF_CERT_ADDRESS='module.custom_domains.azurerm_key_vault_certificate.apim_cert'
                AZURE_CERT_ID='https://scb-preprd-eus2-kv-01.vault.azure.net/certificates/apim-stage/d23f119aeea843c585b73a5b51ff5d20'
                terraform import "${TF_CERT_ADDRESS}" "${AZURE_CERT_ID}" || echo "--> WARNING: Certificate import failed. It might already be in state."

                TF_KEY_ADDRESS='module.storage.azurerm_key_vault_key.cmk'
                AZURE_KEY_ID='https://scb-kv-sa-cmk.vault.azure.net/keys/scbpreprdapimeus2sa01-cmk-7690/6fc89e0f7e7f449da1b7540a67bab004'
                terraform import "${TF_KEY_ADDRESS}" "${AZURE_KEY_ID}" || echo "--> WARNING: Key import failed. It might already be in state."

                echo ""
                echo "══════════════════════════════════════════════"
                echo "  3. TERRAFORM PLAN"
                echo "══════════════════════════════════════════════"
                terraform plan -lock-timeout=300s \
                  -var-file=terraform.tfvars \
                  -out=preprod.tfplan
                
                echo "✅ Init, Import, and Plan complete."

          - task: PublishPipelineArtifact@1
            displayName: 'Publish Plan'
            inputs:
              targetPath: $(workingDir)/preprod.tfplan
              artifactName: preprod-plan

          - task: PublishPipelineArtifact@1
            displayName: 'Publish Source'
            inputs:
              targetPath: $(System.DefaultWorkingDirectory)
              artifactName: source-preprod

###############################################################################
# Stage 3: DEPLOY — develop branch only (with environment approval gate)
###############################################################################
  - stage: Deploy_PreProd
    displayName: '🚀 Deploy PreProd'
    dependsOn: Plan_PreProd
    condition: |
      and(
        succeeded(),
        ne(variables['Build.Reason'], 'PullRequest'),
        eq(variables['Build.SourceBranch'], 'refs/heads/develop')
      )
    jobs:
      - deployment: DeployPreProd
        displayName: 'Terraform Apply — PreProd'
        environment: 'scb-apim-preprod'
        strategy:
          runOnce:
            deploy:
              steps:
                - task: DownloadPipelineArtifact@2
                  displayName: 'Download Source'
                  inputs:
                    artifactName: source-preprod
                    targetPath: $(Pipeline.Workspace)/source-preprod

                - task: DownloadPipelineArtifact@2
                  displayName: 'Download Plan'
                  inputs:
                    artifactName: preprod-plan
                    targetPath: $(Pipeline.Workspace)/preprod-plan

                - script: |
                    curl -fsSL https://releases.hashicorp.com/terraform/$(terraformVersion)/terraform_$(terraformVersion)_linux_amd64.zip -o /tmp/terraform.zip
                    sudo unzip -o /tmp/terraform.zip -d /usr/local/bin/
                  displayName: 'Install Terraform'

                - task: DownloadSecureFile@1
                  name: preprodCert
                  inputs:
                    secureFile: 'apim-stage.pfx'

                - task: AzureCLI@2
                  displayName: 'Terraform Init & Apply'
                  inputs:
                    azureSubscription: $(serviceConnection)
                    scriptType: bash
                    addSpnToEnvironment: true
                    failOnStandardError: true
                    workingDirectory: $(Pipeline.Workspace)/source-preprod/infra/environments/preprod
                    scriptLocation: inlineScript
                    inlineScript: |
                      set -euo pipefail
                      export ARM_CLIENT_ID=$servicePrincipalId
                      export ARM_CLIENT_SECRET=$servicePrincipalKey
                      export ARM_TENANT_ID=$tenantId
                      export ARM_SUBSCRIPTION_ID=$(PREPROD_SUBSCRIPTION_ID)
                      export TF_VAR_certificate_base64=$(base64 -w 0 $(preprodCert.secureFilePath))
                      export TF_VAR_certificate_password="$(PREPROD_CERT_PASSWORD)"

                      echo "══════════════════════════════════════════════"
                      echo "  TERRAFORM INIT"
                      echo "══════════════════════════════════════════════"
                      terraform init \
                        -backend-config=backend.tfvars \
                        -backend-config="subscription_id=$(PREPROD_SUBSCRIPTION_ID)" \
                        -backend-config="tenant_id=$tenantId" \
                        -backend-config="client_id=$servicePrincipalId" \
                        -backend-config="client_secret=$servicePrincipalKey"
                      
                      # Also add the critical fix here for future runs
                      echo "Setting execute permissions on providers..."
                      chmod -R +x .terraform/providers/

                      echo "══════════════════════════════════════════════"
                      echo "  TERRAFORM APPLY"
                      echo "══════════════════════════════════════════════"
                      terraform apply -auto-approve -lock-timeout=300s "$(Pipeline.Workspace)/preprod-plan/preprod.tfplan"
                
                - task: AzureCLI@2
                  displayName: 'Post-Deploy Validation'
                  inputs:
                    azureSubscription: $(serviceConnection)
                    scriptType: bash
                    failOnStandardError: false
                    scriptLocation: inlineScript
                    inlineScript: |
                      echo "=== APIM Status ==="
                      az apim show -n scb-preprd-apim-eus2-apim-01 \
                        -g scb-preprd-apim-eus2-rg-01 \
                        --subscription $(PREPROD_SUBSCRIPTION_ID) \
                        --query "{name:name, status:provisioningState, privateIP:privateIpAddresses[0]}" \
                        -o table || echo "⚠️ Could not query APIM status"
                      echo ""
                      echo "=== Private Endpoints ==="
                      az network private-endpoint list \
                        -g scb-preprd-apim-eus2-rg-01 \
                        --subscription $(PREPROD_SUBSCRIPTION_ID) \
                        --query "[].{Name:name, Status:privateLinkServiceConnections[0].privateLinkServiceConnectionState.status}" \
                        -o table || echo "⚠️ Could not query PEs"

                - task: AzureCLI@2
                  displayName: 'Smoke Tests'
                  inputs:
                    azureSubscription: $(serviceConnection)
                    scriptType: bash
                    failOnStandardError: false
                    scriptLocation: inlineScript
                    inlineScript: |
                      echo "╔══════════════════════════════════════════╗"
                      echo "║     APIM SMOKE TESTS — PREPROD          ║"
                      echo "╚══════════════════════════════════════════╝"
                      APIM_NAME="scb-preprd-apim-eus2-apim-01"
                      RG_NAME="scb-preprd-apim-eus2-rg-01"
                      SUB_ID="$(PREPROD_SUBSCRIPTION_ID)"
                      PASS=0
                      WARN=0
                      FAIL=0
                      
                      # Test 1: APIM provisioning state
                      echo ""
                      echo "▶ Test 1: APIM Provisioning State"
                      STATUS=$(az apim show -n $APIM_NAME -g $RG_NAME --subscription $SUB_ID \
                        --query provisioningState -o tsv 2>/dev/null || echo "error")
                      if [ "$STATUS" = "Succeeded" ]; then
                        echo "  ✅ PASS — APIM state: $STATUS"
                        PASS=$((PASS+1))
                      else
                        echo "  ❌ FAIL — APIM state: $STATUS (expected: Succeeded)"
                        FAIL=$((FAIL+1))
                      fi
                      
                      # Test 2: Platform version is stv2
                      echo ""
                      echo "▶ Test 2: Platform Version"
                      PLATFORM=$(az apim show -n $APIM_NAME -g $RG_NAME --subscription $SUB_ID \
                        --query platformVersion -o tsv 2>/dev/null || echo "error")
                      if [ "$PLATFORM" = "stv2" ] || [ "$PLATFORM" = "stv2.1" ]; then
                        echo "  ✅ PASS — Platform: $PLATFORM"
                        PASS=$((PASS+1))
                      else
                        echo "  ❌ FAIL — Platform: $PLATFORM (expected: stv2)"
                        FAIL=$((FAIL+1))
                      fi
                      
                      # Test 3: Private IP assigned
                      echo ""
                      echo "▶ Test 3: Private IP Assignment"
                      PRIVATE_IP=$(az apim show -n $APIM_NAME -g $RG_NAME --subscription $SUB_ID \
                        --query "privateIpAddresses[0]" -o tsv 2>/dev/null || echo "error")
                      if [ -n "$PRIVATE_IP" ] && [ "$PRIVATE_IP" != "null" ] && [ "$PRIVATE_IP" != "error" ]; then
                        echo "  ✅ PASS — Private IP: $PRIVATE_IP"
                        PASS=$((PASS+1))
                      else
                        echo "  ❌ FAIL — No private IP assigned"
                        FAIL=$((FAIL+1))
                      fi
                      
                      # Test 4: Key Vault private endpoint
                      echo ""
                      echo "▶ Test 4: Key Vault Private Endpoint"
                      KV_PE_STATUS=$(az network private-endpoint list -g $RG_NAME --subscription $SUB_ID \
                        --query "[?contains(name,'kv')].privateLinkServiceConnections[0].privateLinkServiceConnectionState.status" \
                        -o tsv 2>/dev/null || echo "error")
                      if [ "$KV_PE_STATUS" = "Approved" ]; then
                        echo "  ✅ PASS — KV PE: $KV_PE_STATUS"
                        PASS=$((PASS+1))
                      else
                        echo "  ⚠️  WARN — KV PE: $KV_PE_STATUS"
                        WARN=$((WARN+1))
                      fi
                      
                      # Test 5: VNet peering
                      echo ""
                      echo "▶ Test 5: VNet Peering"
                      PEERING_STATE=$(az network vnet peering list -g $RG_NAME \
                        --vnet-name scb-preprd-apim-eus2-vnet-01 --subscription $SUB_ID \
                        --query "[0].peeringState" -o tsv 2>/dev/null || echo "none")
                      if [ "$PEERING_STATE" = "Connected" ]; then
                        echo "  ✅ PASS — Peering: $PEERING_STATE"
                        PASS=$((PASS+1))
                      else
                        echo "  ⚠️  WARN — Peering: $PEERING_STATE"
                        WARN=$((WARN+1))
                      fi
                      
                      echo ""
                      echo "════════════════════════════════════════════"
                      echo "  SMOKE TESTS COMPLETE"
                      echo "  ✅ PASS: $PASS | ⚠️  WARN: $WARN | ❌ FAIL: $FAIL"
                      echo "════════════════════════════════════════════"
                      if [ $FAIL -gt 0 ]; then
                        echo "❌ $FAIL critical test(s) failed — pipeline will stop"
                        exit 1
                      fi
                      if [ $WARN -gt 0 ]; then
                        echo "⚠️  $WARN warning(s) — non-critical, pipeline continues"
                      fi
                      echo "✅ All critical tests passed"
