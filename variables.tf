Error: a resource with the ID "https://scb-preprd-eus2-kv-01.vault.azure.net/certificates/apim-stage/d23f119aeea843c585b73a5b51ff5d20" already exists - to be managed via Terraform this resource needs to be imported into the State. Please see the resource documentation for "azurerm_key_vault_certificate" for more information
│ 
│   with module.custom_domains.azurerm_key_vault_certificate.apim_cert,
│   on ../../modules/custom-domains/main.tf line 33, in resource "azurerm_key_vault_certificate" "apim_cert":
│   33: resource "azurerm_key_vault_certificate" "apim_cert" {
│ 
╵
╷
│ Error: a resource with the ID "https://scb-kv-sa-cmk.vault.azure.net/keys/scbpreprdapimeus2sa01-cmk-7690/6fc89e0f7e7f449da1b7540a67bab004" already exists - to be managed via Terraform this resource needs to be imported into the State. Please see the resource documentation for "azurerm_key_vault_key" for more information
│ 
│   with module.storage.azurerm_key_vault_key.cmk,
│   on ../../modules/storage/main.tf line 50, in resource "azurerm_key_vault_key" "cmk":
│   50: resource "azurerm_key_vault_key" "cmk" {



- task: AzureCLI@2
            displayName: 'ONE-TIME-FIX: Import Existing Resources'
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

                # Initialize Terraform first to connect to the backend
                echo "Initializing Terraform to connect to state..."
                terraform init \
                  -backend-config=backend.tfvars \
                  -backend-config="subscription_id=$(PREPROD_SUBSCRIPTION_ID)" \
                  -backend-config="tenant_id=$tenantId" \
                  -backend-config="client_id=$servicePrincipalId" \
                  -backend-config="client_secret=$servicePrincipalKey"

                echo "══════════════════════════════════════════════"
                echo "  Attempting to import certificate..."
                echo "══════════════════════════════════════════════"
                TF_CERT_ADDRESS='module.custom_domains.azurerm_key_vault_certificate.apim_cert'
                # IMPORTANT: The ID from the error message WITHOUT the version hash at the end
                AZURE_CERT_ID='https://scb-preprd-eus2-kv-01.vault.azure.net/certificates/apim-stage'
                terraform import "${TF_CERT_ADDRESS}" "${AZURE_CERT_ID}" || echo "Certificate may already be in state. Continuing..."

                echo ""
                echo "══════════════════════════════════════════════"
                echo "  Attempting to import key..."
                echo "══════════════════════════════════════════════"
                TF_KEY_ADDRESS='module.storage.azurerm_key_vault_key.cmk'
                # IMPORTANT: The ID from the error message WITHOUT the version hash at the end
                AZURE_KEY_ID='https://scb-kv-sa-cmk.vault.azure.net/keys/scbpreprdapimeus2sa01-cmk-7690'
                terraform import "${TF_KEY_ADDRESS}" "${AZURE_KEY_ID}" || echo "Key may already be in state. Continuing..."

