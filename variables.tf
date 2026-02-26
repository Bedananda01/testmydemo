Pipeline 1 sucess log
2026-02-26T16:16:51.1103885Z ##[section]Starting: Terraform Init & Apply
2026-02-26T16:16:51.1110067Z ==============================================================================
2026-02-26T16:16:51.1110179Z Task         : Azure CLI
2026-02-26T16:16:51.1110254Z Description  : Run Azure CLI commands against an Azure subscription in a PowerShell Core/Shell script when running on Linux agent or PowerShell/PowerShell Core/Batch script when running on Windows agent.
2026-02-26T16:16:51.1110415Z Version      : 2.268.0
2026-02-26T16:16:51.1110488Z Author       : Microsoft Corporation
2026-02-26T16:16:51.1110557Z Help         : https://docs.microsoft.com/azure/devops/pipelines/tasks/deploy/azure-cli
2026-02-26T16:16:51.1110653Z ==============================================================================
2026-02-26T16:16:51.4337276Z [command]/usr/bin/az version
2026-02-26T16:17:14.9911883Z {
2026-02-26T16:17:14.9916876Z   "azure-cli": "2.83.0",
2026-02-26T16:17:14.9921715Z   "azure-cli-core": "2.83.0",
2026-02-26T16:17:14.9926450Z   "azure-cli-telemetry": "1.1.0",
2026-02-26T16:17:14.9931639Z   "extensions": {
2026-02-26T16:17:14.9932193Z     "azure-devops": "1.0.2"
2026-02-26T16:17:14.9933999Z   }
2026-02-26T16:17:14.9934597Z }
2026-02-26T16:17:14.9936413Z Setting AZURE_CONFIG_DIR env variable to: /home/vsts/work/_temp/.azclitask
2026-02-26T16:17:14.9943738Z Setting active cloud to: AzureCloud
2026-02-26T16:17:14.9948869Z [command]/usr/bin/az cloud set -n AzureCloud
2026-02-26T16:17:17.4650238Z [command]/usr/bin/az login --service-principal -u *** --password=*** --tenant 3615bd26-4fae-415b-a220-9cedae222489 --allow-no-subscriptions
2026-02-26T16:17:18.3639668Z [
2026-02-26T16:17:18.3640173Z   {
2026-02-26T16:17:18.3640454Z     "cloudName": "AzureCloud",
2026-02-26T16:17:18.3640772Z     "homeTenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3641109Z     "id": "0cb7a6bd-3907-42ec-abf1-f1fba9753748",
2026-02-26T16:17:18.3641404Z     "isDefault": true,
2026-02-26T16:17:18.3641673Z     "managedByTenants": [],
2026-02-26T16:17:18.3641973Z     "name": "scb-mgt-sbx-eus2-sub",
2026-02-26T16:17:18.3642264Z     "state": "Enabled",
2026-02-26T16:17:18.3642561Z     "tenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3642849Z     "user": {
2026-02-26T16:17:18.3643303Z       "name": "***",
2026-02-26T16:17:18.3643587Z       "type": "servicePrincipal"
2026-02-26T16:17:18.3643848Z     }
2026-02-26T16:17:18.3644081Z   },
2026-02-26T16:17:18.3644314Z   {
2026-02-26T16:17:18.3644568Z     "cloudName": "AzureCloud",
2026-02-26T16:17:18.3644877Z     "homeTenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3645219Z     "id": "552e20f8-ae2b-47cc-87f3-5834d10a261d",
2026-02-26T16:17:18.3645511Z     "isDefault": false,
2026-02-26T16:17:18.3645780Z     "managedByTenants": [],
2026-02-26T16:17:18.3646066Z     "name": "Seacoast-Sandbox-Test-Dev",
2026-02-26T16:17:18.3646347Z     "state": "Enabled",
2026-02-26T16:17:18.3646652Z     "tenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3646961Z     "user": {
2026-02-26T16:17:18.3647299Z       "name": "***",
2026-02-26T16:17:18.3647592Z       "type": "servicePrincipal"
2026-02-26T16:17:18.3648084Z     }
2026-02-26T16:17:18.3648345Z   },
2026-02-26T16:17:18.3648623Z   {
2026-02-26T16:17:18.3648925Z     "cloudName": "AzureCloud",
2026-02-26T16:17:18.3649653Z     "homeTenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3650028Z     "id": "a38af21e-53de-498d-8176-21394a9f2a88",
2026-02-26T16:17:18.3650357Z     "isDefault": false,
2026-02-26T16:17:18.3650676Z     "managedByTenants": [],
2026-02-26T16:17:18.3650982Z     "name": "Seacoast-Infra-Core",
2026-02-26T16:17:18.3651284Z     "state": "Enabled",
2026-02-26T16:17:18.3651586Z     "tenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3651876Z     "user": {
2026-02-26T16:17:18.3652204Z       "name": "***",
2026-02-26T16:17:18.3652576Z       "type": "servicePrincipal"
2026-02-26T16:17:18.3652858Z     }
2026-02-26T16:17:18.3653109Z   },
2026-02-26T16:17:18.3653364Z   {
2026-02-26T16:17:18.3653945Z     "cloudName": "AzureCloud",
2026-02-26T16:17:18.3654282Z     "homeTenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3654612Z     "id": "37af942d-fa51-47c5-9375-71089ac59c06",
2026-02-26T16:17:18.3654916Z     "isDefault": false,
2026-02-26T16:17:18.3655213Z     "managedByTenants": [],
2026-02-26T16:17:18.3655500Z     "name": "Seacoast-Data-Management",
2026-02-26T16:17:18.3655785Z     "state": "Enabled",
2026-02-26T16:17:18.3656088Z     "tenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3656373Z     "user": {
2026-02-26T16:17:18.3656698Z       "name": "***",
2026-02-26T16:17:18.3656972Z       "type": "servicePrincipal"
2026-02-26T16:17:18.3657228Z     }
2026-02-26T16:17:18.3657471Z   },
2026-02-26T16:17:18.3698178Z   {
2026-02-26T16:17:18.3698545Z     "cloudName": "AzureCloud",
2026-02-26T16:17:18.3698866Z     "homeTenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3699204Z     "id": "469c16cc-83aa-4930-9399-3d2823e34bb8",
2026-02-26T16:17:18.3699520Z     "isDefault": false,
2026-02-26T16:17:18.3699810Z     "managedByTenants": [],
2026-02-26T16:17:18.3700113Z     "name": "scb-prd-con-cus-sub-dr",
2026-02-26T16:17:18.3700418Z     "state": "Enabled",
2026-02-26T16:17:18.3700848Z     "tenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3701168Z     "user": {
2026-02-26T16:17:18.3701543Z       "name": "***",
2026-02-26T16:17:18.3701843Z       "type": "servicePrincipal"
2026-02-26T16:17:18.3702125Z     }
2026-02-26T16:17:18.3702377Z   },
2026-02-26T16:17:18.3702631Z   {
2026-02-26T16:17:18.3702911Z     "cloudName": "AzureCloud",
2026-02-26T16:17:18.3703246Z     "homeTenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3703597Z     "id": "069d02d5-db0a-48e8-927a-06a455c5b154",
2026-02-26T16:17:18.3703910Z     "isDefault": false,
2026-02-26T16:17:18.3704186Z     "managedByTenants": [],
2026-02-26T16:17:18.3704471Z     "name": "scb-prd-con-eus2-sub",
2026-02-26T16:17:18.3704766Z     "state": "Enabled",
2026-02-26T16:17:18.3705094Z     "tenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3705404Z     "user": {
2026-02-26T16:17:18.3705752Z       "name": "***",
2026-02-26T16:17:18.3706045Z       "type": "servicePrincipal"
2026-02-26T16:17:18.3706322Z     }
2026-02-26T16:17:18.3706576Z   },
2026-02-26T16:17:18.3706831Z   {
2026-02-26T16:17:18.3707107Z     "cloudName": "AzureCloud",
2026-02-26T16:17:18.3707434Z     "homeTenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3708030Z     "id": "46175b17-22e3-4be2-9790-abe58f1a5e50",
2026-02-26T16:17:18.3708358Z     "isDefault": false,
2026-02-26T16:17:18.3708652Z     "managedByTenants": [],
2026-02-26T16:17:18.3708958Z     "name": "scb-prd-mgt-core-eus2-sub",
2026-02-26T16:17:18.3709267Z     "state": "Enabled",
2026-02-26T16:17:18.3709581Z     "tenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3709884Z     "user": {
2026-02-26T16:17:18.3710230Z       "name": "***",
2026-02-26T16:17:18.3710513Z       "type": "servicePrincipal"
2026-02-26T16:17:18.3710791Z     }
2026-02-26T16:17:18.3711034Z   },
2026-02-26T16:17:18.3711269Z   {
2026-02-26T16:17:18.3711530Z     "cloudName": "AzureCloud",
2026-02-26T16:17:18.3711863Z     "homeTenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3712444Z     "id": "1fcbf052-9bbe-4095-8f08-68836db52fdd",
2026-02-26T16:17:18.3712775Z     "isDefault": false,
2026-02-26T16:17:18.3713059Z     "managedByTenants": [],
2026-02-26T16:17:18.3713372Z     "name": "scb-prd-plt-infra-eus2-sub",
2026-02-26T16:17:18.3713662Z     "state": "Enabled",
2026-02-26T16:17:18.3713963Z     "tenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3714246Z     "user": {
2026-02-26T16:17:18.3714570Z       "name": "***",
2026-02-26T16:17:18.3714844Z       "type": "servicePrincipal"
2026-02-26T16:17:18.3715101Z     }
2026-02-26T16:17:18.3715336Z   },
2026-02-26T16:17:18.3715567Z   {
2026-02-26T16:17:18.3715828Z     "cloudName": "AzureCloud",
2026-02-26T16:17:18.3716135Z     "homeTenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3716641Z     "id": "453de4b7-2000-480f-b682-000d44b80cd2",
2026-02-26T16:17:18.3716965Z     "isDefault": false,
2026-02-26T16:17:18.3717260Z     "managedByTenants": [],
2026-02-26T16:17:18.3717576Z     "name": "scb-dev-plt-infra-eus2-sub",
2026-02-26T16:17:18.3759061Z     "state": "Enabled",
2026-02-26T16:17:18.3759362Z     "tenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3759634Z     "user": {
2026-02-26T16:17:18.3759966Z       "name": "***",
2026-02-26T16:17:18.3760232Z       "type": "servicePrincipal"
2026-02-26T16:17:18.3760481Z     }
2026-02-26T16:17:18.3760690Z   },
2026-02-26T16:17:18.3760899Z   {
2026-02-26T16:17:18.3761130Z     "cloudName": "AzureCloud",
2026-02-26T16:17:18.3761416Z     "homeTenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3761713Z     "id": "6d10c52b-9662-4374-8674-bccc52ea3fbf",
2026-02-26T16:17:18.3761975Z     "isDefault": false,
2026-02-26T16:17:18.3762213Z     "managedByTenants": [],
2026-02-26T16:17:18.3762467Z     "name": "scb-prd-shdsvc-eus2-sub",
2026-02-26T16:17:18.3763239Z     "state": "Enabled",
2026-02-26T16:17:18.3763501Z     "tenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3763749Z     "user": {
2026-02-26T16:17:18.3764028Z       "name": "***",
2026-02-26T16:17:18.3764267Z       "type": "servicePrincipal"
2026-02-26T16:17:18.3764554Z     }
2026-02-26T16:17:18.3764761Z   },
2026-02-26T16:17:18.3764967Z   {
2026-02-26T16:17:18.3765186Z     "cloudName": "AzureCloud",
2026-02-26T16:17:18.3765466Z     "homeTenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3765751Z     "id": "9aa0acf3-141d-4569-9616-1518d8d7e600",
2026-02-26T16:17:18.3766007Z     "isDefault": false,
2026-02-26T16:17:18.3766240Z     "managedByTenants": [],
2026-02-26T16:17:18.3766486Z     "name": "scb-prd-sec-eus2-sub",
2026-02-26T16:17:18.3766720Z     "state": "Enabled",
2026-02-26T16:17:18.3773052Z     "tenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3773404Z     "user": {
2026-02-26T16:17:18.3773713Z       "name": "***",
2026-02-26T16:17:18.3773980Z       "type": "servicePrincipal"
2026-02-26T16:17:18.3774211Z     }
2026-02-26T16:17:18.3774425Z   },
2026-02-26T16:17:18.3774644Z   {
2026-02-26T16:17:18.3774897Z     "cloudName": "AzureCloud",
2026-02-26T16:17:18.3775211Z     "homeTenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3775544Z     "id": "5603ad89-bafa-47d9-b43f-3950ea8283c0",
2026-02-26T16:17:18.3775832Z     "isDefault": false,
2026-02-26T16:17:18.3776090Z     "managedByTenants": [],
2026-02-26T16:17:18.3776362Z     "name": "Seacoast-Management-Core",
2026-02-26T16:17:18.3776629Z     "state": "Enabled",
2026-02-26T16:17:18.3776915Z     "tenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3777182Z     "user": {
2026-02-26T16:17:18.3788103Z       "name": "***",
2026-02-26T16:17:18.3788440Z       "type": "servicePrincipal"
2026-02-26T16:17:18.3788658Z     }
2026-02-26T16:17:18.3788847Z   },
2026-02-26T16:17:18.3789040Z   {
2026-02-26T16:17:18.3789245Z     "cloudName": "AzureCloud",
2026-02-26T16:17:18.3789536Z     "homeTenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3789857Z     "id": "a1fd0bff-4636-4307-94a0-143b89955371",
2026-02-26T16:17:18.3790435Z     "isDefault": false,
2026-02-26T16:17:18.3790715Z     "managedByTenants": [],
2026-02-26T16:17:18.3791009Z     "name": "Seacoast Management",
2026-02-26T16:17:18.3791292Z     "state": "Enabled",
2026-02-26T16:17:18.3791604Z     "tenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3791910Z     "user": {
2026-02-26T16:17:18.3792272Z       "name": "***",
2026-02-26T16:17:18.3792555Z       "type": "servicePrincipal"
2026-02-26T16:17:18.3792834Z     }
2026-02-26T16:17:18.3793103Z   },
2026-02-26T16:17:18.3793342Z   {
2026-02-26T16:17:18.3793619Z     "cloudName": "AzureCloud",
2026-02-26T16:17:18.3793941Z     "homeTenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3794289Z     "id": "3fa6fdd4-8271-4e49-8a1d-c60aba567991",
2026-02-26T16:17:18.3794748Z     "isDefault": false,
2026-02-26T16:17:18.3795034Z     "managedByTenants": [],
2026-02-26T16:17:18.3795341Z     "name": "scb-prd-mgt-data-eus2-sub",
2026-02-26T16:17:18.3795643Z     "state": "Enabled",
2026-02-26T16:17:18.3795965Z     "tenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3796272Z     "user": {
2026-02-26T16:17:18.3796676Z       "name": "***",
2026-02-26T16:17:18.3796959Z       "type": "servicePrincipal"
2026-02-26T16:17:18.3797227Z     }
2026-02-26T16:17:18.3797474Z   },
2026-02-26T16:17:18.3818388Z   {
2026-02-26T16:17:18.3818711Z     "cloudName": "AzureCloud",
2026-02-26T16:17:18.3819040Z     "homeTenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3819387Z     "id": "615dd30f-2585-4fb8-80ed-bbae2ddc648d",
2026-02-26T16:17:18.3819693Z     "isDefault": false,
2026-02-26T16:17:18.3819973Z     "managedByTenants": [],
2026-02-26T16:17:18.3820262Z     "name": "scb-preprd-apim-eus2-sub",
2026-02-26T16:17:18.3820558Z     "state": "Enabled",
2026-02-26T16:17:18.3820875Z     "tenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3821198Z     "user": {
2026-02-26T16:17:18.3821541Z       "name": "***",
2026-02-26T16:17:18.3821820Z       "type": "servicePrincipal"
2026-02-26T16:17:18.3822086Z     }
2026-02-26T16:17:18.3822325Z   },
2026-02-26T16:17:18.3822567Z   {
2026-02-26T16:17:18.3822818Z     "cloudName": "AzureCloud",
2026-02-26T16:17:18.3823137Z     "homeTenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3823490Z     "id": "78eda9d1-4556-46d7-9a41-f352f03f4491",
2026-02-26T16:17:18.3823795Z     "isDefault": false,
2026-02-26T16:17:18.3824083Z     "managedByTenants": [],
2026-02-26T16:17:18.3824366Z     "name": "scb-prd-apim-eus2-sub",
2026-02-26T16:17:18.3824649Z     "state": "Enabled",
2026-02-26T16:17:18.3824980Z     "tenantId": "3615bd26-4fae-415b-a220-9cedae222489",
2026-02-26T16:17:18.3825295Z     "user": {
2026-02-26T16:17:18.3825638Z       "name": "***",
2026-02-26T16:17:18.3825934Z       "type": "servicePrincipal"
2026-02-26T16:17:18.3826190Z     }
2026-02-26T16:17:18.3826426Z   }
2026-02-26T16:17:18.3826669Z ]
2026-02-26T16:17:18.3826999Z [command]/usr/bin/az account set --subscription 615dd30f-2585-4fb8-80ed-bbae2ddc648d
2026-02-26T16:17:18.8348733Z [command]/usr/bin/bash /home/vsts/work/_temp/azureclitaskscript1772122611428.sh
2026-02-26T16:17:18.8757426Z ══════════════════════════════════════════════
2026-02-26T16:17:18.8758699Z   TERRAFORM INIT
2026-02-26T16:17:18.8773213Z ══════════════════════════════════════════════
2026-02-26T16:17:18.9697408Z [0m[1mInitializing the backend...[0m
2026-02-26T16:17:20.5669136Z [0m[1mInitializing modules...[0m
2026-02-26T16:17:20.5870575Z [0m[1mInitializing provider plugins...[0m
2026-02-26T16:17:20.5871462Z - Reusing previous version of hashicorp/azurerm from the dependency lock file
2026-02-26T16:17:20.6686984Z - Reusing previous version of hashicorp/random from the dependency lock file
2026-02-26T16:17:20.6985322Z - Reusing previous version of hashicorp/time from the dependency lock file
2026-02-26T16:17:20.9041341Z - Using previously-installed hashicorp/azurerm v4.61.0
2026-02-26T16:17:20.9168715Z - Using previously-installed hashicorp/random v3.8.1
2026-02-26T16:17:20.9292971Z - Using previously-installed hashicorp/time v0.13.1
2026-02-26T16:17:20.9293323Z 
2026-02-26T16:17:20.9296412Z [0m[1m[32mTerraform has been successfully initialized![0m[32m[0m
2026-02-26T16:17:20.9297220Z [0m[32m
2026-02-26T16:17:20.9301329Z You may now begin working with Terraform. Try running "terraform plan" to see
2026-02-26T16:17:20.9301717Z any changes that are required for your infrastructure. All Terraform commands
2026-02-26T16:17:20.9302021Z should now work.
2026-02-26T16:17:20.9302130Z 
2026-02-26T16:17:20.9302409Z If you ever set or change modules or backend configuration for Terraform,
2026-02-26T16:17:20.9302747Z rerun this command to reinitialize your working directory. If you forget, other
2026-02-26T16:17:20.9303354Z commands will detect it and remind you to do so if necessary.[0m
2026-02-26T16:17:20.9364472Z grep: /tmp/tf_apply_output.txt: No such file or directory
2026-02-26T16:17:20.9365075Z 
2026-02-26T16:17:20.9365942Z ══════════════════════════════════════════════
2026-02-26T16:17:20.9366699Z   TERRAFORM APPLY (attempt 2 — after import)
2026-02-26T16:17:20.9367356Z ══════════════════════════════════════════════
2026-02-26T16:17:25.0642274Z [0m[1mmodule.storage.random_integer.cmk_suffix: Refreshing state... [id=7690][0m
2026-02-26T16:17:30.6553668Z [0m[1mdata.azurerm_virtual_network.hub: Reading...[0m[0m
2026-02-26T16:17:31.0355616Z [0m[1mdata.azurerm_virtual_network.hub: Read complete after 0s [id=/subscriptions/069d02d5-db0a-48e8-927a-06a455c5b154/resourceGroups/scb-prd-net-eus2-core-01/providers/Microsoft.Network/virtualNetworks/scb-prd-gw-eus2-vnet-01][0m
2026-02-26T16:17:31.5170714Z [0m[1mdata.azurerm_log_analytics_workspace.laws: Reading...[0m[0m
2026-02-26T16:17:31.9411418Z [0m[1mdata.azurerm_log_analytics_workspace.laws: Read complete after 0s [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-logs-rg/providers/Microsoft.OperationalInsights/workspaces/scb-plt-law-eus2-shared][0m
2026-02-26T16:17:32.2770424Z [0m[1mdata.azurerm_key_vault.cmk: Reading...[0m[0m
2026-02-26T16:17:32.4640287Z [0m[1mdata.azurerm_key_vault.cmk: Read complete after 0s [id=/subscriptions/46175b17-22e3-4be2-9790-abe58f1a5e50/resourceGroups/scb-rg-mon-core-eus2/providers/Microsoft.KeyVault/vaults/scb-kv-sa-cmk][0m
2026-02-26T16:17:32.9347273Z [0m[1mdata.azurerm_private_dns_zone.keyvault: Reading...[0m[0m
2026-02-26T16:17:32.9352453Z [0m[1mdata.azurerm_private_dns_zone.queue: Reading...[0m[0m
2026-02-26T16:17:32.9363904Z [0m[1mdata.azurerm_private_dns_zone.blob: Reading...[0m[0m
2026-02-26T16:17:32.9364837Z [0m[1mdata.azurerm_private_dns_zone.table: Reading...[0m[0m
2026-02-26T16:17:32.9366144Z [0m[1mdata.azurerm_private_dns_zone.azure_api: Reading...[0m[0m
2026-02-26T16:17:32.9366949Z [0m[1mdata.azurerm_private_dns_zone.file: Reading...[0m[0m
2026-02-26T16:17:33.2538223Z [0m[1mdata.azurerm_private_dns_zone.keyvault: Read complete after 0s [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/privatelink.vaultcore.azure.net][0m
2026-02-26T16:17:33.2539909Z [0m[1mdata.azurerm_private_dns_zone.table: Read complete after 0s [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/privatelink.table.core.windows.net][0m
2026-02-26T16:17:33.2884561Z [0m[1mdata.azurerm_private_dns_zone.file: Read complete after 0s [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/privatelink.file.core.windows.net][0m
2026-02-26T16:17:33.2982125Z [0m[1mdata.azurerm_private_dns_zone.blob: Read complete after 0s [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net][0m
2026-02-26T16:17:33.4282618Z [0m[1mdata.azurerm_private_dns_zone.azure_api: Read complete after 0s [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/privatelink.azure-api.net][0m
2026-02-26T16:17:34.3214844Z [0m[1mdata.azurerm_private_dns_zone.queue: Read complete after 1s [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/privatelink.queue.core.windows.net][0m
2026-02-26T16:17:34.8352730Z [0m[1mmodule.storage.data.azurerm_client_config.current: Reading...[0m[0m
2026-02-26T16:17:34.8353805Z [0m[1mazurerm_resource_group.this: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01][0m
2026-02-26T16:17:34.8354488Z [0m[1mmodule.keyvault.data.azurerm_client_config.current: Reading...[0m[0m
2026-02-26T16:17:34.8371474Z [0m[1mmodule.storage.data.azurerm_client_config.current: Read complete after 0s [id=Y2xpZW50Q29uZmlncy9jbGllbnRJZD0wM2NhYzRhNi1lMzViLTQxMTgtOTdjMC03MTc0YmQ1ODI1ZjY7b2JqZWN0SWQ9ZTczZjY3ZGYtMDE5OS00Y2U1LTgyZjEtMzJmNGMwODFhYjlkO3N1YnNjcmlwdGlvbklkPTYxNWRkMzBmLTI1ODUtNGZiOC04MGVkLWJiYWUyZGRjNjQ4ZDt0ZW5hbnRJZD0zNjE1YmQyNi00ZmFlLTQxNWItYTIyMC05Y2VkYWUyMjI0ODk=][0m
2026-02-26T16:17:34.8390153Z [0m[1mmodule.storage.azurerm_role_assignment.deployer_crypto_officer: Refreshing state... [id=/subscriptions/46175b17-22e3-4be2-9790-abe58f1a5e50/resourceGroups/scb-rg-mon-core-eus2/providers/Microsoft.KeyVault/vaults/scb-kv-sa-cmk/providers/Microsoft.Authorization/roleAssignments/1ba7ad2b-21a5-32c7-0684-2366b9a14900][0m
2026-02-26T16:17:34.8391848Z [0m[1mmodule.keyvault.data.azurerm_client_config.current: Read complete after 0s [id=Y2xpZW50Q29uZmlncy9jbGllbnRJZD0wM2NhYzRhNi1lMzViLTQxMTgtOTdjMC03MTc0YmQ1ODI1ZjY7b2JqZWN0SWQ9ZTczZjY3ZGYtMDE5OS00Y2U1LTgyZjEtMzJmNGMwODFhYjlkO3N1YnNjcmlwdGlvbklkPTYxNWRkMzBmLTI1ODUtNGZiOC04MGVkLWJiYWUyZGRjNjQ4ZDt0ZW5hbnRJZD0zNjE1YmQyNi00ZmFlLTQxNWItYTIyMC05Y2VkYWUyMjI0ODk=][0m
2026-02-26T16:17:35.0352691Z [0m[1mmodule.networking.azurerm_route_table.pe: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/routeTables/scb-preprd-apim-eus2-rtbl-01-pe][0m
2026-02-26T16:17:35.0526866Z [0m[1mmodule.keyvault.azurerm_key_vault.this: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.KeyVault/vaults/scb-preprd-eus2-kv-01][0m
2026-02-26T16:17:35.0609071Z [0m[1mmodule.networking.azurerm_virtual_network.this: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/virtualNetworks/scb-preprd-apim-eus2-vnet-01][0m
2026-02-26T16:17:35.0650832Z [0m[1mmodule.networking.azurerm_route_table.apim: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/routeTables/scb-preprd-apim-eus2-rtbl-01][0m
2026-02-26T16:17:35.0662799Z [0m[1mmodule.storage.azurerm_user_assigned_identity.cmk: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.ManagedIdentity/userAssignedIdentities/scbpreprdapimeus2sa01-cmk-id][0m
2026-02-26T16:17:35.0690909Z [0m[1mmodule.nsg.azurerm_network_security_group.pe: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/networkSecurityGroups/scb-preprd-apim-eus2-nsg-01-pe][0m
2026-02-26T16:17:35.0801369Z [0m[1mmodule.networking.azurerm_route_table.svc: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/routeTables/scb-preprd-apim-eus2-rtbl-01-svc][0m
2026-02-26T16:17:35.0955227Z [0m[1mmodule.nsg.azurerm_network_security_group.apim: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/networkSecurityGroups/scb-preprd-apim-eus2-nsg-01][0m
2026-02-26T16:17:35.3068548Z [0m[1mmodule.storage.azurerm_role_assignment.cmk_crypto_user: Refreshing state... [id=/subscriptions/46175b17-22e3-4be2-9790-abe58f1a5e50/resourceGroups/scb-rg-mon-core-eus2/providers/Microsoft.KeyVault/vaults/scb-kv-sa-cmk/providers/Microsoft.Authorization/roleAssignments/16ffabc2-7d19-deca-03cf-7d61186400a0][0m
2026-02-26T16:17:35.3192213Z [0m[1mmodule.networking.azurerm_subnet.pe: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/virtualNetworks/scb-preprd-apim-eus2-vnet-01/subnets/scb-preprd-apim-eus2-pe-subnet-01][0m
2026-02-26T16:17:35.3199872Z [0m[1mmodule.networking.azurerm_subnet.svc: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/virtualNetworks/scb-preprd-apim-eus2-vnet-01/subnets/scb-preprd-apim-eus2-svc-subnet-01][0m
2026-02-26T16:17:35.3206877Z [0m[1mmodule.dns_links.azurerm_private_dns_zone_virtual_network_link.links["file"]: Refreshing state... [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/privatelink.file.core.windows.net/virtualNetworkLinks/scb-preprd-apim-file-link][0m
2026-02-26T16:17:35.3231754Z [0m[1mmodule.networking.azurerm_subnet.apim: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/virtualNetworks/scb-preprd-apim-eus2-vnet-01/subnets/scb-preprd-apim-eus2-apim-subnet-01][0m
2026-02-26T16:17:35.3238409Z [0m[1mmodule.vnet_peering.azurerm_virtual_network_peering.remote_to_local: Refreshing state... [id=/subscriptions/069d02d5-db0a-48e8-927a-06a455c5b154/resourceGroups/scb-prd-net-eus2-core-01/providers/Microsoft.Network/virtualNetworks/scb-prd-gw-eus2-vnet-01/virtualNetworkPeerings/scb-prd-gw-eus2-vnet-01-to-scb-preprd-apim-eus2-vnet-01][0m
2026-02-26T16:17:35.3466931Z [0m[1mmodule.vnet_peering.azurerm_virtual_network_peering.local_to_remote: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/virtualNetworks/scb-preprd-apim-eus2-vnet-01/virtualNetworkPeerings/scb-preprd-apim-eus2-vnet-01-to-scb-prd-gw-eus2-vnet-01][0m
2026-02-26T16:17:35.4735460Z [0m[1mmodule.dns_links.azurerm_private_dns_zone_virtual_network_link.links["keyvault"]: Refreshing state... [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/privatelink.vaultcore.azure.net/virtualNetworkLinks/scb-preprd-apim-keyvault-link][0m
2026-02-26T16:17:35.5265655Z [0m[1mmodule.dns_links.azurerm_private_dns_zone_virtual_network_link.links["queue"]: Refreshing state... [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/privatelink.queue.core.windows.net/virtualNetworkLinks/scb-preprd-apim-queue-link][0m
2026-02-26T16:17:35.5337899Z [0m[1mmodule.dns_links.azurerm_private_dns_zone_virtual_network_link.links["table"]: Refreshing state... [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/privatelink.table.core.windows.net/virtualNetworkLinks/scb-preprd-apim-table-link][0m
2026-02-26T16:17:35.5449947Z [0m[1mmodule.dns_links.azurerm_private_dns_zone_virtual_network_link.links["azure-api"]: Refreshing state... [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/privatelink.azure-api.net/virtualNetworkLinks/scb-preprd-apim-azure-api-link][0m
2026-02-26T16:17:35.5640888Z [0m[1mmodule.dns_links.azurerm_private_dns_zone_virtual_network_link.links["blob"]: Refreshing state... [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net/virtualNetworkLinks/scb-preprd-apim-blob-link][0m
2026-02-26T16:17:35.5987304Z [0m[1mmodule.networking.azurerm_subnet_route_table_association.svc: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/virtualNetworks/scb-preprd-apim-eus2-vnet-01/subnets/scb-preprd-apim-eus2-svc-subnet-01][0m
2026-02-26T16:17:35.6339308Z [0m[1mmodule.networking.azurerm_subnet_route_table_association.pe: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/virtualNetworks/scb-preprd-apim-eus2-vnet-01/subnets/scb-preprd-apim-eus2-pe-subnet-01][0m
2026-02-26T16:17:35.6348976Z [0m[1mmodule.networking.azurerm_subnet_route_table_association.apim: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/virtualNetworks/scb-preprd-apim-eus2-vnet-01/subnets/scb-preprd-apim-eus2-apim-subnet-01][0m
2026-02-26T16:17:35.8291812Z [0m[1mmodule.nsg.azurerm_subnet_network_security_group_association.pe: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/virtualNetworks/scb-preprd-apim-eus2-vnet-01/subnets/scb-preprd-apim-eus2-pe-subnet-01][0m
2026-02-26T16:17:35.8316534Z [0m[1mmodule.nsg.azurerm_subnet_network_security_group_association.apim: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/virtualNetworks/scb-preprd-apim-eus2-vnet-01/subnets/scb-preprd-apim-eus2-apim-subnet-01][0m
2026-02-26T16:17:35.8622484Z [0m[1mmodule.storage.time_sleep.cmk_rbac_propagation: Refreshing state... [id=2026-02-26T02:18:51Z][0m
2026-02-26T16:17:35.8706421Z [0m[1mmodule.storage.azurerm_key_vault_key.cmk: Refreshing state... [id=https://scb-kv-sa-cmk.vault.azure.net/keys/scbpreprdapimeus2sa01-cmk-7690/6fc89e0f7e7f449da1b7540a67bab004][0m
2026-02-26T16:17:35.9316066Z [0m[1mmodule.keyvault.azurerm_role_assignment.deployer_admin: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.KeyVault/vaults/scb-preprd-eus2-kv-01/providers/Microsoft.Authorization/roleAssignments/3883bb3c-100b-54be-e9c1-69e5644d5d08][0m
2026-02-26T16:17:35.9338073Z [0m[1mmodule.keyvault.azurerm_private_endpoint.kv: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/privateEndpoints/scb-preprd-eus2-kv-01-pe][0m
2026-02-26T16:17:36.1020617Z [0m[1mmodule.apim.azurerm_api_management.this: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.ApiManagement/service/scb-preprd-apim-eus2-apim-01][0m
2026-02-26T16:17:37.3966744Z [0m[1mmodule.storage.azurerm_storage_account.this: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Storage/storageAccounts/scbpreprdapimeus2sa01][0m
2026-02-26T16:17:38.3526309Z [0m[1mmodule.apim.azurerm_api_management_named_value.environment: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.ApiManagement/service/scb-preprd-apim-eus2-apim-01/namedValues/environment][0m
2026-02-26T16:17:38.3534862Z [0m[1mmodule.diagnostics.azurerm_monitor_diagnostic_setting.apim: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.ApiManagement/service/scb-preprd-apim-eus2-apim-01|scb-preprd-apim-eus2-apim-01-diag][0m
2026-02-26T16:17:38.3537399Z [0m[1mmodule.keyvault.azurerm_role_assignment.apim_cert_officer: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.KeyVault/vaults/scb-preprd-eus2-kv-01/providers/Microsoft.Authorization/roleAssignments/904c1ba6-1060-b209-dae2-0d51e5757893][0m
2026-02-26T16:17:38.3539382Z [0m[1mmodule.keyvault.azurerm_role_assignment.apim_secrets_user: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.KeyVault/vaults/scb-preprd-eus2-kv-01/providers/Microsoft.Authorization/roleAssignments/01e5f8ae-f979-dee9-d0e5-f88c15aacca6][0m
2026-02-26T16:17:38.6422426Z [0m[1mmodule.app_insights.azurerm_application_insights.this: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/components/scb-preprd-apim-eus2-appins-01][0m
2026-02-26T16:17:38.9533294Z [0m[1mmodule.keyvault.time_sleep.rbac_propagation: Refreshing state... [id=2026-02-25T21:11:15Z][0m
2026-02-26T16:17:38.9697181Z [0m[1mmodule.diagnostics.azurerm_monitor_diagnostic_setting.keyvault: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.KeyVault/vaults/scb-preprd-eus2-kv-01|scb-preprd-eus2-kv-01-diag][0m
2026-02-26T16:17:38.9711151Z [0m[1mmodule.custom_domains.azurerm_private_dns_zone.custom: Refreshing state... [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/stage.seacoastbank.com][0m
2026-02-26T16:17:38.9810805Z [0m[1mmodule.custom_domains.azurerm_api_management_custom_domain.this: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.ApiManagement/service/scb-preprd-apim-eus2-apim-01/customDomains/default][0m
2026-02-26T16:17:39.3690819Z [0m[1mmodule.app_insights.azurerm_application_insights_smart_detection_rule.degradation: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/components/scb-preprd-apim-eus2-appins-01/proactiveDetectionConfigs/degradationinserverresponsetime][0m
2026-02-26T16:17:39.3711405Z [0m[1mmodule.app_insights.azurerm_application_insights_smart_detection_rule.dependency_degradation: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/components/scb-preprd-apim-eus2-appins-01/proactiveDetectionConfigs/degradationindependencyduration][0m
2026-02-26T16:17:39.3718790Z [0m[1mmodule.app_insights.azurerm_application_insights_smart_detection_rule.failure_anomalies: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/components/scb-preprd-apim-eus2-appins-01/proactiveDetectionConfigs/slowpageloadtime][0m
2026-02-26T16:17:39.3739934Z [0m[1mmodule.app_insights.azurerm_api_management_logger.app_insights: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.ApiManagement/service/scb-preprd-apim-eus2-apim-01/loggers/scb-preprd-apim-eus2-apim-01-appinsights-logger][0m
2026-02-26T16:17:39.3763798Z [0m[1mmodule.app_insights.azurerm_application_insights_smart_detection_rule.slow_response: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/components/scb-preprd-apim-eus2-appins-01/proactiveDetectionConfigs/slowserverresponsetime][0m
2026-02-26T16:17:39.3812694Z [0m[1mmodule.app_insights.azurerm_monitor_diagnostic_setting.app_insights: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/components/scb-preprd-apim-eus2-appins-01|scb-preprd-apim-eus2-appins-01-diag][0m
2026-02-26T16:17:39.6777220Z [0m[1mmodule.custom_domains.azurerm_private_dns_a_record.gateway: Refreshing state... [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/stage.seacoastbank.com/A/api][0m
2026-02-26T16:17:39.6778767Z [0m[1mmodule.custom_domains.azurerm_private_dns_a_record.management: Refreshing state... [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/stage.seacoastbank.com/A/management][0m
2026-02-26T16:17:39.6780905Z [0m[1mmodule.custom_domains.azurerm_private_dns_zone_virtual_network_link.custom: Refreshing state... [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/stage.seacoastbank.com/virtualNetworkLinks/scb-preprd-apim-stage-seacoastbank-com-link][0m
2026-02-26T16:17:39.6783018Z [0m[1mmodule.custom_domains.azurerm_private_dns_a_record.developer: Refreshing state... [id=/subscriptions/6d10c52b-9662-4374-8674-bccc52ea3fbf/resourceGroups/scb-prod-eus2-dns-rg/providers/Microsoft.Network/privateDnsZones/stage.seacoastbank.com/A/developer][0m
2026-02-26T16:17:39.7250226Z [0m[1mmodule.storage.azurerm_private_endpoint.storage["queue"]: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/privateEndpoints/scbpreprdapimeus2sa01-queue-pe][0m
2026-02-26T16:17:39.7261769Z [0m[1mmodule.storage.azurerm_private_endpoint.storage["file"]: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/privateEndpoints/scbpreprdapimeus2sa01-file-pe][0m
2026-02-26T16:17:39.7305292Z [0m[1mmodule.storage.azurerm_private_endpoint.storage["table"]: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/privateEndpoints/scbpreprdapimeus2sa01-table-pe][0m
2026-02-26T16:17:39.8101208Z [0m[1mmodule.storage.azurerm_private_endpoint.storage["blob"]: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/privateEndpoints/scbpreprdapimeus2sa01-blob-pe][0m
2026-02-26T16:17:39.9686926Z [0m[1mmodule.diagnostics.azurerm_monitor_diagnostic_setting.storage: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Storage/storageAccounts/scbpreprdapimeus2sa01|scbpreprdapimeus2sa01-diag][0m
2026-02-26T16:17:39.9798775Z [0m[1mmodule.diagnostics.azurerm_monitor_diagnostic_setting.storage_blob: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Storage/storageAccounts/scbpreprdapimeus2sa01/blobServices/default|scbpreprdapimeus2sa01-blob-diag][0m
2026-02-26T16:17:40.1241457Z [0m[1mmodule.app_insights.azurerm_api_management_diagnostic.app_insights: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.ApiManagement/service/scb-preprd-apim-eus2-apim-01/diagnostics/applicationinsights][0m
2026-02-26T16:17:41.1707246Z [0m[1mmodule.alerts.azurerm_monitor_action_group.apim_ops: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/actionGroups/scb-preprd-apim-eus2-ag-01][0m
2026-02-26T16:17:41.7531268Z [0m[1mmodule.alerts.azurerm_monitor_metric_alert.kv_saturation: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scb-preprd-eus2-kv-01-saturation][0m
2026-02-26T16:17:41.7563968Z [0m[1mmodule.alerts.azurerm_monitor_metric_alert.apim_failed_requests: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scb-preprd-apim-eus2-apim-01-failed-requests][0m
2026-02-26T16:17:41.7565322Z [0m[1mmodule.alerts.azurerm_monitor_metric_alert.apim_latency: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scb-preprd-apim-eus2-apim-01-high-latency][0m
2026-02-26T16:17:41.7566449Z [0m[1mmodule.alerts.azurerm_monitor_metric_alert.apim_capacity: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scb-preprd-apim-eus2-apim-01-capacity][0m
2026-02-26T16:17:41.7572826Z [0m[1mmodule.alerts.azurerm_monitor_metric_alert.kv_availability: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scb-preprd-eus2-kv-01-availability][0m
2026-02-26T16:17:41.7627137Z [0m[1mmodule.alerts.azurerm_monitor_metric_alert.kv_access_denied: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scb-preprd-eus2-kv-01-access-denied][0m
2026-02-26T16:17:41.7665533Z [0m[1mmodule.alerts.azurerm_monitor_scheduled_query_rules_alert_v2.apim_error_spike: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/scheduledQueryRules/scb-preprd-apim-eus2-apim-01-error-spike-kql][0m
2026-02-26T16:17:41.7817250Z [0m[1mmodule.alerts.azurerm_monitor_scheduled_query_rules_alert_v2.apim_slow_api: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/scheduledQueryRules/scb-preprd-apim-eus2-apim-01-slow-apis-kql][0m
2026-02-26T16:17:41.7839046Z [0m[1mmodule.alerts.azurerm_monitor_scheduled_query_rules_alert_v2.kv_unauthorized: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/scheduledQueryRules/scb-preprd-eus2-kv-01-unauthorized-kql][0m
2026-02-26T16:17:41.7868070Z [0m[1mmodule.alerts.azurerm_monitor_metric_alert.apim_unauthorized: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scb-preprd-apim-eus2-apim-01-unauthorized][0m
2026-02-26T16:17:41.9941246Z [0m[1mmodule.alerts.azurerm_monitor_metric_alert.storage_latency: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scbpreprdapimeus2sa01-latency][0m
2026-02-26T16:17:42.0153030Z [0m[1mmodule.alerts.azurerm_monitor_metric_alert.storage_availability: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scbpreprdapimeus2sa01-availability][0m
2026-02-26T16:17:42.4331145Z [0m[1mmodule.security.azurerm_monitor_activity_log_alert.apim_delete: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/activityLogAlerts/scb-preprd-apim-eus2-apim-01-delete-audit][0m
2026-02-26T16:17:42.4342567Z [0m[1mmodule.security.azurerm_monitor_activity_log_alert.nsg_change: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/activityLogAlerts/scb-preprd-apim-eus2-nsg-01-rule-change-audit][0m
2026-02-26T16:17:42.4393473Z [0m[1mmodule.security.azurerm_api_management_named_value.rate_limit_period: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.ApiManagement/service/scb-preprd-apim-eus2-apim-01/namedValues/rate-limit-period-seconds][0m
2026-02-26T16:17:42.4397189Z [0m[1mmodule.security.azurerm_api_management_named_value.rate_limit_calls: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.ApiManagement/service/scb-preprd-apim-eus2-apim-01/namedValues/rate-limit-calls][0m
2026-02-26T16:17:42.4405419Z [0m[1mmodule.security.azurerm_monitor_activity_log_alert.kv_delete: Refreshing state... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/activityLogAlerts/scb-preprd-eus2-kv-01-delete-audit][0m
2026-02-26T16:17:45.2722108Z 
2026-02-26T16:17:45.2727553Z [1m[36mNote:[0m[1m Objects have changed outside of Terraform
2026-02-26T16:17:45.2732835Z [0m
2026-02-26T16:17:45.2733504Z Terraform detected the following changes made outside of Terraform since the
2026-02-26T16:17:45.2734192Z last "terraform apply" which may have affected this plan:
2026-02-26T16:17:45.2740326Z 
2026-02-26T16:17:45.2745162Z [1m  # module.storage.azurerm_key_vault_key.cmk[0m has been deleted
2026-02-26T16:17:45.2747058Z [0m  [31m-[0m[0m resource "azurerm_key_vault_key" "cmk" {
2026-02-26T16:17:45.2748158Z       [31m-[0m[0m id                      = "https://scb-kv-sa-cmk.vault.azure.net/keys/scbpreprdapimeus2sa01-cmk-7690/6fc89e0f7e7f449da1b7540a67bab004" [90m-> null[0m[0m
2026-02-26T16:17:45.2750445Z       [31m-[0m[0m name                    = "scbpreprdapimeus2sa01-cmk-7690" [90m-> null[0m[0m
2026-02-26T16:17:45.2754677Z         [90m# (17 unchanged attributes hidden)[0m[0m
2026-02-26T16:17:45.2755025Z 
2026-02-26T16:17:45.2755581Z         [90m# (1 unchanged block hidden)[0m[0m
2026-02-26T16:17:45.2756027Z     }
2026-02-26T16:17:45.2756288Z 
2026-02-26T16:17:45.2756543Z 
2026-02-26T16:17:45.2757007Z Unless you have made equivalent changes to your configuration, or ignored the
2026-02-26T16:17:45.2757561Z relevant attributes using ignore_changes, the following plan may include
2026-02-26T16:17:45.2758319Z actions to undo or respond to these changes.
2026-02-26T16:17:45.2758861Z [90m
2026-02-26T16:17:45.2760276Z ─────────────────────────────────────────────────────────────────────────────[0m
2026-02-26T16:17:45.2760601Z 
2026-02-26T16:17:45.2761095Z Terraform used the selected providers to generate the following execution
2026-02-26T16:17:45.2761632Z plan. Resource actions are indicated with the following symbols:
2026-02-26T16:17:45.2762230Z   [32m+[0m create[0m
2026-02-26T16:17:45.2762752Z   [33m~[0m update in-place[0m
2026-02-26T16:17:45.2763348Z   [31m-[0m destroy[0m
2026-02-26T16:17:45.2771797Z  [36m<=[0m read (data resources)[0m
2026-02-26T16:17:45.2771938Z 
2026-02-26T16:17:45.2772240Z Terraform will perform the following actions:
2026-02-26T16:17:45.2772389Z 
2026-02-26T16:17:45.2772865Z [1m  # module.custom_domains.azurerm_api_management_custom_domain.this[0m will be updated in-place
2026-02-26T16:17:45.2773370Z [0m  [33m~[0m[0m resource "azurerm_api_management_custom_domain" "this" {
2026-02-26T16:17:45.2773864Z         id                = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.ApiManagement/service/scb-preprd-apim-eus2-apim-01/customDomains/default"
2026-02-26T16:17:45.2774435Z         [90m# (1 unchanged attribute hidden)[0m[0m
2026-02-26T16:17:45.2774570Z 
2026-02-26T16:17:45.2774912Z       [33m~[0m[0m developer_portal {
2026-02-26T16:17:45.2775501Z           [33m~[0m[0m key_vault_certificate_id        = "https://scb-preprd-eus2-kv-01.vault.azure.net/secrets/apim-stage" -> (known after apply)
2026-02-26T16:17:45.2799105Z             [90m# (11 unchanged attributes hidden)[0m[0m
2026-02-26T16:17:45.2799409Z         }
2026-02-26T16:17:45.2799792Z 
2026-02-26T16:17:45.2800125Z       [33m~[0m[0m gateway {
2026-02-26T16:17:45.2800694Z           [33m~[0m[0m key_vault_certificate_id        = "https://scb-preprd-eus2-kv-01.vault.azure.net/secrets/apim-stage" -> (known after apply)
2026-02-26T16:17:45.2801202Z             [90m# (12 unchanged attributes hidden)[0m[0m
2026-02-26T16:17:45.2801474Z         }
2026-02-26T16:17:45.2801578Z 
2026-02-26T16:17:45.2801909Z       [33m~[0m[0m management {
2026-02-26T16:17:45.2802474Z           [33m~[0m[0m key_vault_certificate_id        = "https://scb-preprd-eus2-kv-01.vault.azure.net/secrets/apim-stage" -> (known after apply)
2026-02-26T16:17:45.2802982Z             [90m# (11 unchanged attributes hidden)[0m[0m
2026-02-26T16:17:45.2803389Z         }
2026-02-26T16:17:45.2803619Z     }
2026-02-26T16:17:45.2803719Z 
2026-02-26T16:17:45.2804167Z [1m  # module.custom_domains.azurerm_key_vault_certificate.apim_cert[0m will be created
2026-02-26T16:17:45.2804670Z [0m  [32m+[0m[0m resource "azurerm_key_vault_certificate" "apim_cert" {
2026-02-26T16:17:45.2805139Z       [32m+[0m[0m certificate_attribute           = (known after apply)
2026-02-26T16:17:45.2805587Z       [32m+[0m[0m certificate_data                = (known after apply)
2026-02-26T16:17:45.2806039Z       [32m+[0m[0m certificate_data_base64         = (known after apply)
2026-02-26T16:17:45.2806489Z       [32m+[0m[0m id                              = (known after apply)
2026-02-26T16:17:45.2807208Z       [32m+[0m[0m key_vault_id                    = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.KeyVault/vaults/scb-preprd-eus2-kv-01"
2026-02-26T16:17:45.2813514Z       [32m+[0m[0m name                            = "apim-stage"
2026-02-26T16:17:45.2814053Z       [32m+[0m[0m resource_manager_id             = (known after apply)
2026-02-26T16:17:45.2814527Z       [32m+[0m[0m resource_manager_versionless_id = (known after apply)
2026-02-26T16:17:45.2814982Z       [32m+[0m[0m secret_id                       = (known after apply)
2026-02-26T16:17:45.2815412Z       [32m+[0m[0m thumbprint                      = (known after apply)
2026-02-26T16:17:45.2815840Z       [32m+[0m[0m version                         = (known after apply)
2026-02-26T16:17:45.2816285Z       [32m+[0m[0m versionless_id                  = (known after apply)
2026-02-26T16:17:45.2816727Z       [32m+[0m[0m versionless_secret_id           = (known after apply)
2026-02-26T16:17:45.2816874Z 
2026-02-26T16:17:45.2817219Z       [32m+[0m[0m certificate {
2026-02-26T16:17:45.2817606Z           [32m+[0m[0m contents = (sensitive value)
2026-02-26T16:17:45.2818238Z           [32m+[0m[0m password = (sensitive value)
2026-02-26T16:17:45.2818521Z         }
2026-02-26T16:17:45.2818611Z 
2026-02-26T16:17:45.2818982Z       [32m+[0m[0m certificate_policy (known after apply)
2026-02-26T16:17:45.2819704Z     }
2026-02-26T16:17:45.2819825Z 
2026-02-26T16:17:45.2820302Z [1m  # module.security.data.azurerm_client_config.current[0m will be read during apply
2026-02-26T16:17:45.2820690Z   # (depends on a resource or a module with changes pending)
2026-02-26T16:17:45.2821124Z [0m [36m<=[0m[0m data "azurerm_client_config" "current" {
2026-02-26T16:17:45.2821537Z       [32m+[0m[0m client_id       = (known after apply)
2026-02-26T16:17:45.2821930Z       [32m+[0m[0m id              = (known after apply)
2026-02-26T16:17:45.2822344Z       [32m+[0m[0m object_id       = (known after apply)
2026-02-26T16:17:45.2822764Z       [32m+[0m[0m subscription_id = (known after apply)
2026-02-26T16:17:45.2823179Z       [32m+[0m[0m tenant_id       = (known after apply)
2026-02-26T16:17:45.2823455Z     }
2026-02-26T16:17:45.2823555Z 
2026-02-26T16:17:45.2824050Z [1m  # module.security.azurerm_api_management_named_value.rate_limit_calls[0m will be [1m[31mdestroyed[0m
2026-02-26T16:17:45.2824478Z   # (because azurerm_api_management_named_value.rate_limit_calls is not in configuration)
2026-02-26T16:17:45.2825138Z [0m  [31m-[0m[0m resource "azurerm_api_management_named_value" "rate_limit_calls" {
2026-02-26T16:17:45.2825657Z       [31m-[0m[0m api_management_name = "scb-preprd-apim-eus2-apim-01" [90m-> null[0m[0m
2026-02-26T16:17:45.2826129Z       [31m-[0m[0m display_name        = "RateLimitCalls" [90m-> null[0m[0m
2026-02-26T16:17:45.2826977Z       [31m-[0m[0m id                  = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.ApiManagement/service/scb-preprd-apim-eus2-apim-01/namedValues/rate-limit-calls" [90m-> null[0m[0m
2026-02-26T16:17:45.2827618Z       [31m-[0m[0m name                = "rate-limit-calls" [90m-> null[0m[0m
2026-02-26T16:17:45.2828591Z       [31m-[0m[0m resource_group_name = "scb-preprd-apim-eus2-rg-01" [90m-> null[0m[0m
2026-02-26T16:17:45.2829056Z       [31m-[0m[0m secret              = false [90m-> null[0m[0m
2026-02-26T16:17:45.2829460Z       [31m-[0m[0m tags                = [] [90m-> null[0m[0m
2026-02-26T16:17:45.2829898Z       [31m-[0m[0m value               = (sensitive value) [90m-> null[0m[0m
2026-02-26T16:17:45.2830172Z     }
2026-02-26T16:17:45.2830272Z 
2026-02-26T16:17:45.2830776Z [1m  # module.security.azurerm_api_management_named_value.rate_limit_period[0m will be [1m[31mdestroyed[0m
2026-02-26T16:17:45.2831228Z   # (because azurerm_api_management_named_value.rate_limit_period is not in configuration)
2026-02-26T16:17:45.2831759Z [0m  [31m-[0m[0m resource "azurerm_api_management_named_value" "rate_limit_period" {
2026-02-26T16:17:45.2832286Z       [31m-[0m[0m api_management_name = "scb-preprd-apim-eus2-apim-01" [90m-> null[0m[0m
2026-02-26T16:17:45.2832778Z       [31m-[0m[0m display_name        = "RateLimitPeriod" [90m-> null[0m[0m
2026-02-26T16:17:45.2833654Z       [31m-[0m[0m id                  = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.ApiManagement/service/scb-preprd-apim-eus2-apim-01/namedValues/rate-limit-period-seconds" [90m-> null[0m[0m
2026-02-26T16:17:45.2834317Z       [31m-[0m[0m name                = "rate-limit-period-seconds" [90m-> null[0m[0m
2026-02-26T16:17:45.2834808Z       [31m-[0m[0m resource_group_name = "scb-preprd-apim-eus2-rg-01" [90m-> null[0m[0m
2026-02-26T16:17:45.2835250Z       [31m-[0m[0m secret              = false [90m-> null[0m[0m
2026-02-26T16:17:45.2835655Z       [31m-[0m[0m tags                = [] [90m-> null[0m[0m
2026-02-26T16:17:45.2836077Z       [31m-[0m[0m value               = (sensitive value) [90m-> null[0m[0m
2026-02-26T16:17:45.2836363Z     }
2026-02-26T16:17:45.2836464Z 
2026-02-26T16:17:45.2836937Z [1m  # module.security.azurerm_monitor_activity_log_alert.apim_delete[0m will be updated in-place
2026-02-26T16:17:45.2837459Z [0m  [33m~[0m[0m resource "azurerm_monitor_activity_log_alert" "apim_delete" {
2026-02-26T16:17:45.2838212Z         id                  = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/activityLogAlerts/scb-preprd-apim-eus2-apim-01-delete-audit"
2026-02-26T16:17:45.2838726Z         name                = "scb-preprd-apim-eus2-apim-01-delete-audit"
2026-02-26T16:17:45.2839116Z       [33m~[0m[0m scopes              = [
2026-02-26T16:17:45.2839560Z           [31m-[0m[0m "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d",
2026-02-26T16:17:45.2839890Z         ] -> (known after apply)
2026-02-26T16:17:45.2840159Z         tags                = {
2026-02-26T16:17:45.2840450Z             "Compliance"        = "Seacoast Bank-Regulatory"
2026-02-26T16:17:45.2840763Z             "CostCenter"        = "APIM-PreProd"
2026-02-26T16:17:45.2841066Z             "Department"        = "Platform Engineering"
2026-02-26T16:17:45.2841364Z             "Environment"       = "Stage"
2026-02-26T16:17:45.2841657Z             "ManagedBy"         = "Terraform"
2026-02-26T16:17:45.2841944Z             "Owner"             = "Cloud Services"
2026-02-26T16:17:45.2842411Z             "Project"           = "API Managment"
2026-02-26T16:17:45.2842706Z             "administrator"     = "Development"
2026-02-26T16:17:45.2842995Z             "deployedBy"        = "Deloitte"
2026-02-26T16:17:45.2843289Z             "deploymentChannel" = "terraform"
2026-02-26T16:17:45.2843656Z             "deploymentName"    = "deployment-6a972034-90e5-4c2d-b87b-bd3938df6681"
2026-02-26T16:17:45.2843983Z             "isCompliant"       = "NA"
2026-02-26T16:17:45.2844267Z             "sharedservice"     = "false"
2026-02-26T16:17:45.2844546Z             "vendor"            = "Microsoft"
2026-02-26T16:17:45.2844834Z             "workloadname"      = "API Management"
2026-02-26T16:17:45.2845206Z         }
2026-02-26T16:17:45.2845597Z         [90m# (4 unchanged attributes hidden)[0m[0m
2026-02-26T16:17:45.2845732Z 
2026-02-26T16:17:45.2846097Z         [90m# (2 unchanged blocks hidden)[0m[0m
2026-02-26T16:17:45.2846377Z     }
2026-02-26T16:17:45.2846475Z 
2026-02-26T16:17:45.2846940Z [1m  # module.security.azurerm_monitor_activity_log_alert.kv_delete[0m will be updated in-place
2026-02-26T16:17:45.2847452Z [0m  [33m~[0m[0m resource "azurerm_monitor_activity_log_alert" "kv_delete" {
2026-02-26T16:17:45.2848235Z         id                  = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/activityLogAlerts/scb-preprd-eus2-kv-01-delete-audit"
2026-02-26T16:17:45.2848724Z         name                = "scb-preprd-eus2-kv-01-delete-audit"
2026-02-26T16:17:45.2849128Z       [33m~[0m[0m scopes              = [
2026-02-26T16:17:45.2849575Z           [31m-[0m[0m "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d",
2026-02-26T16:17:45.2849908Z         ] -> (known after apply)
2026-02-26T16:17:45.2850173Z         tags                = {
2026-02-26T16:17:45.2850457Z             "Compliance"        = "Seacoast Bank-Regulatory"
2026-02-26T16:17:45.2850764Z             "CostCenter"        = "APIM-PreProd"
2026-02-26T16:17:45.2851073Z             "Department"        = "Platform Engineering"
2026-02-26T16:17:45.2851375Z             "Environment"       = "Stage"
2026-02-26T16:17:45.2851657Z             "ManagedBy"         = "Terraform"
2026-02-26T16:17:45.2851945Z             "Owner"             = "Cloud Services"
2026-02-26T16:17:45.2852233Z             "Project"           = "API Managment"
2026-02-26T16:17:45.2852526Z             "administrator"     = "Development"
2026-02-26T16:17:45.2852823Z             "deployedBy"        = "Deloitte"
2026-02-26T16:17:45.2853118Z             "deploymentChannel" = "terraform"
2026-02-26T16:17:45.2853454Z             "deploymentName"    = "deployment-6a972034-90e5-4c2d-b87b-bd3938df6681"
2026-02-26T16:17:45.2853782Z             "isCompliant"       = "NA"
2026-02-26T16:17:45.2854065Z             "sharedservice"     = "false"
2026-02-26T16:17:45.2854347Z             "vendor"            = "Microsoft"
2026-02-26T16:17:45.2854635Z             "workloadname"      = "API Management"
2026-02-26T16:17:45.2854906Z         }
2026-02-26T16:17:45.2855286Z         [90m# (4 unchanged attributes hidden)[0m[0m
2026-02-26T16:17:45.2855418Z 
2026-02-26T16:17:45.2855776Z         [90m# (2 unchanged blocks hidden)[0m[0m
2026-02-26T16:17:45.2856053Z     }
2026-02-26T16:17:45.2856147Z 
2026-02-26T16:17:45.2856616Z [1m  # module.security.azurerm_monitor_activity_log_alert.nsg_change[0m will be updated in-place
2026-02-26T16:17:45.2857136Z [0m  [33m~[0m[0m resource "azurerm_monitor_activity_log_alert" "nsg_change" {
2026-02-26T16:17:45.2857818Z         id                  = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/activityLogAlerts/scb-preprd-apim-eus2-nsg-01-rule-change-audit"
2026-02-26T16:17:45.2858745Z         name                = "scb-preprd-apim-eus2-nsg-01-rule-change-audit"
2026-02-26T16:17:45.2859167Z       [33m~[0m[0m scopes              = [
2026-02-26T16:17:45.2859768Z           [31m-[0m[0m "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d",
2026-02-26T16:17:45.2860103Z         ] -> (known after apply)
2026-02-26T16:17:45.2860372Z         tags                = {
2026-02-26T16:17:45.2860657Z             "Compliance"        = "Seacoast Bank-Regulatory"
2026-02-26T16:17:45.2860968Z             "CostCenter"        = "APIM-PreProd"
2026-02-26T16:17:45.2861270Z             "Department"        = "Platform Engineering"
2026-02-26T16:17:45.2861572Z             "Environment"       = "Stage"
2026-02-26T16:17:45.2861855Z             "ManagedBy"         = "Terraform"
2026-02-26T16:17:45.2862141Z             "Owner"             = "Cloud Services"
2026-02-26T16:17:45.2862428Z             "Project"           = "API Managment"
2026-02-26T16:17:45.2862820Z             "administrator"     = "Development"
2026-02-26T16:17:45.2863110Z             "deployedBy"        = "Deloitte"
2026-02-26T16:17:45.2863394Z             "deploymentChannel" = "terraform"
2026-02-26T16:17:45.2863724Z             "deploymentName"    = "deployment-6a972034-90e5-4c2d-b87b-bd3938df6681"
2026-02-26T16:17:45.2864049Z             "isCompliant"       = "NA"
2026-02-26T16:17:45.2864341Z             "sharedservice"     = "false"
2026-02-26T16:17:45.2864622Z             "vendor"            = "Microsoft"
2026-02-26T16:17:45.2864919Z             "workloadname"      = "API Management"
2026-02-26T16:17:45.2865184Z         }
2026-02-26T16:17:45.2865570Z         [90m# (4 unchanged attributes hidden)[0m[0m
2026-02-26T16:17:45.2865704Z 
2026-02-26T16:17:45.2866075Z         [90m# (2 unchanged blocks hidden)[0m[0m
2026-02-26T16:17:45.2866348Z     }
2026-02-26T16:17:45.2866443Z 
2026-02-26T16:17:45.2866854Z [1m  # module.storage.azurerm_key_vault_key.cmk[0m will be created
2026-02-26T16:17:45.2867305Z [0m  [32m+[0m[0m resource "azurerm_key_vault_key" "cmk" {
2026-02-26T16:17:45.2867925Z       [32m+[0m[0m curve                   = (known after apply)
2026-02-26T16:17:45.2868356Z       [32m+[0m[0m e                       = (known after apply)
2026-02-26T16:17:45.2868784Z       [32m+[0m[0m id                      = (known after apply)
2026-02-26T16:17:45.2869161Z       [32m+[0m[0m key_opts                = [
2026-02-26T16:17:45.2869516Z           [32m+[0m[0m "decrypt",
2026-02-26T16:17:45.2869854Z           [32m+[0m[0m "encrypt",
2026-02-26T16:17:45.2870198Z           [32m+[0m[0m "sign",
2026-02-26T16:17:45.2870538Z           [32m+[0m[0m "unwrapKey",
2026-02-26T16:17:45.2870880Z           [32m+[0m[0m "verify",
2026-02-26T16:17:45.2871226Z           [32m+[0m[0m "wrapKey",
2026-02-26T16:17:45.2871479Z         ]
2026-02-26T16:17:45.2871843Z       [32m+[0m[0m key_size                = 2048
2026-02-26T16:17:45.2872225Z       [32m+[0m[0m key_type                = "RSA"
2026-02-26T16:17:45.2872900Z       [32m+[0m[0m key_vault_id            = "/subscriptions/46175b17-22e3-4be2-9790-abe58f1a5e50/resourceGroups/scb-rg-mon-core-eus2/providers/Microsoft.KeyVault/vaults/scb-kv-sa-cmk"
2026-02-26T16:17:45.2873443Z       [32m+[0m[0m n                       = (known after apply)
2026-02-26T16:17:45.2873876Z       [32m+[0m[0m name                    = "scbpreprdapimeus2sa01-cmk-7690"
2026-02-26T16:17:45.2874322Z       [32m+[0m[0m public_key_openssh      = (known after apply)
2026-02-26T16:17:45.2874760Z       [32m+[0m[0m public_key_pem          = (known after apply)
2026-02-26T16:17:45.2875197Z       [32m+[0m[0m resource_id             = (known after apply)
2026-02-26T16:17:45.2875637Z       [32m+[0m[0m resource_versionless_id = (known after apply)
2026-02-26T16:17:45.2876070Z       [32m+[0m[0m version                 = (known after apply)
2026-02-26T16:17:45.2876487Z       [32m+[0m[0m versionless_id          = (known after apply)
2026-02-26T16:17:45.2876911Z       [32m+[0m[0m x                       = (known after apply)
2026-02-26T16:17:45.2877319Z       [32m+[0m[0m y                       = (known after apply)
2026-02-26T16:17:45.2877453Z 
2026-02-26T16:17:45.2878095Z       [32m+[0m[0m rotation_policy {
2026-02-26T16:17:45.2878496Z           [32m+[0m[0m expire_after         = "P365D"
2026-02-26T16:17:45.2878900Z           [32m+[0m[0m notify_before_expiry = "P30D"
2026-02-26T16:17:45.2879034Z 
2026-02-26T16:17:45.2879366Z           [32m+[0m[0m automatic {
2026-02-26T16:17:45.2879768Z               [32m+[0m[0m time_before_expiry = "P30D"
2026-02-26T16:17:45.2880045Z             }
2026-02-26T16:17:45.2880287Z         }
2026-02-26T16:17:45.2880523Z     }
2026-02-26T16:17:45.2880615Z 
2026-02-26T16:17:45.2881050Z [1m  # module.storage.azurerm_storage_account.this[0m will be updated in-place
2026-02-26T16:17:45.2881516Z [0m  [33m~[0m[0m resource "azurerm_storage_account" "this" {
2026-02-26T16:17:45.2882090Z         id                                 = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Storage/storageAccounts/scbpreprdapimeus2sa01"
2026-02-26T16:17:45.2882532Z         name                               = "scbpreprdapimeus2sa01"
2026-02-26T16:17:45.2882823Z         tags                               = {
2026-02-26T16:17:45.2883115Z             "Compliance"        = "Seacoast Bank-Regulatory"
2026-02-26T16:17:45.2883420Z             "CostCenter"        = "APIM-PreProd"
2026-02-26T16:17:45.2883759Z             "Department"        = "Platform Engineering"
2026-02-26T16:17:45.2884048Z             "Environment"       = "Stage"
2026-02-26T16:17:45.2884344Z             "ManagedBy"         = "Terraform"
2026-02-26T16:17:45.2884635Z             "Owner"             = "Cloud Services"
2026-02-26T16:17:45.2884925Z             "Project"           = "API Managment"
2026-02-26T16:17:45.2885218Z             "administrator"     = "Development"
2026-02-26T16:17:45.2885514Z             "deployedBy"        = "Deloitte"
2026-02-26T16:17:45.2885807Z             "deploymentChannel" = "terraform"
2026-02-26T16:17:45.2886149Z             "deploymentName"    = "deployment-6a972034-90e5-4c2d-b87b-bd3938df6681"
2026-02-26T16:17:45.2886471Z             "isCompliant"       = "NA"
2026-02-26T16:17:45.2886756Z             "sharedservice"     = "false"
2026-02-26T16:17:45.2887046Z             "vendor"            = "Microsoft"
2026-02-26T16:17:45.2887339Z             "workloadname"      = "API Management"
2026-02-26T16:17:45.2887607Z         }
2026-02-26T16:17:45.2888165Z         [90m# (97 unchanged attributes hidden)[0m[0m
2026-02-26T16:17:45.2888297Z 
2026-02-26T16:17:45.2888652Z       [33m~[0m[0m customer_managed_key {
2026-02-26T16:17:45.2889311Z           [33m~[0m[0m key_vault_key_id          = "https://scb-kv-sa-cmk.vault.azure.net/keys/scbpreprdapimeus2sa01-cmk-7690/6fc89e0f7e7f449da1b7540a67bab004" -> (known after apply)
2026-02-26T16:17:45.2889868Z             [90m# (2 unchanged attributes hidden)[0m[0m
2026-02-26T16:17:45.2890150Z         }
2026-02-26T16:17:45.2890244Z 
2026-02-26T16:17:45.2890606Z         [90m# (5 unchanged blocks hidden)[0m[0m
2026-02-26T16:17:45.2890876Z     }
2026-02-26T16:17:45.2890983Z 
2026-02-26T16:17:45.2891350Z [1mPlan:[0m 2 to add, 5 to change, 2 to destroy.
2026-02-26T16:17:54.3510022Z [0m[0m[1mmodule.security.azurerm_api_management_named_value.rate_limit_calls: Destroying... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.ApiManagement/service/scb-preprd-apim-eus2-apim-01/namedValues/rate-limit-calls][0m[0m
2026-02-26T16:17:54.3540560Z [0m[1mmodule.security.azurerm_api_management_named_value.rate_limit_period: Destroying... [id=/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.ApiManagement/service/scb-preprd-apim-eus2-apim-01/namedValues/rate-limit-period-seconds][0m[0m
2026-02-26T16:17:54.3644795Z [0m[1mmodule.custom_domains.azurerm_key_vault_certificate.apim_cert: Creating...[0m[0m
2026-02-26T16:17:59.1229011Z [0m[1mmodule.security.azurerm_api_management_named_value.rate_limit_period: Destruction complete after 5s[0m
2026-02-26T16:17:59.3237292Z [0m[1mmodule.security.azurerm_api_management_named_value.rate_limit_calls: Destruction complete after 5s[0m
2026-02-26T16:17:59.3280129Z [0m[1mmodule.storage.azurerm_key_vault_key.cmk: Creating...[0m[0m
2026-02-26T16:18:04.3653830Z [0m[1mmodule.custom_domains.azurerm_key_vault_certificate.apim_cert: Still creating... [10s elapsed][0m[0m
2026-02-26T16:18:09.3298549Z [0m[1mmodule.storage.azurerm_key_vault_key.cmk: Still creating... [10s elapsed][0m[0m
2026-02-26T16:18:14.3655247Z [0m[1mmodule.custom_domains.azurerm_key_vault_certificate.apim_cert: Still creating... [20s elapsed][0m[0m
2026-02-26T16:18:19.3300503Z [0m[1mmodule.storage.azurerm_key_vault_key.cmk: Still creating... [20s elapsed][0m[0m
2026-02-26T16:18:24.3659578Z [0m[1mmodule.custom_domains.azurerm_key_vault_certificate.apim_cert: Still creating... [30s elapsed][0m[0m
2026-02-26T16:18:29.3308722Z [0m[1mmodule.storage.azurerm_key_vault_key.cmk: Still creating... [30s elapsed][0m[0m
2026-02-26T16:18:34.3667495Z [0m[1mmodule.custom_domains.azurerm_key_vault_certificate.apim_cert: Still creating... [40s elapsed][0m[0m
2026-02-26T16:18:39.3319044Z [0m[1mmodule.storage.azurerm_key_vault_key.cmk: Still creating... [40s elapsed][0m[0m
2026-02-26T16:18:44.3676922Z [0m[1mmodule.custom_domains.azurerm_key_vault_certificate.apim_cert: Still creating... [50s elapsed][0m[0m
2026-02-26T16:18:49.3327940Z [0m[1mmodule.storage.azurerm_key_vault_key.cmk: Still creating... [50s elapsed][0m[0m
2026-02-26T16:18:54.3685245Z [0m[1mmodule.custom_domains.azurerm_key_vault_certificate.apim_cert: Still creating... [1m0s elapsed][0m[0m
2026-02-26T16:18:59.3328750Z [0m[1mmodule.storage.azurerm_key_vault_key.cmk: Still creating... [1m0s elapsed][0m[0m
2026-02-26T16:19:04.3686691Z [0m[1mmodule.custom_domains.azurerm_key_vault_certificate.apim_cert: Still creating... [1m10s elapsed][0m[0m
2026-02-26T16:19:09.3334938Z [0m[1mmodule.storage.azurerm_key_vault_key.cmk: Still creating... [1m10s elapsed][0m[0m
2026-02-26T16:19:14.3690869Z [0m[1mmodule.custom_domains.azurerm_key_vault_certificate.apim_cert: Still creating... [1m20s elapsed][0m[0m
2026-02-26T16:19:19.3341218Z [0m[1mmodule.storage.azurerm_key_vault_key.cmk: Still creating... [1m20s elapsed][0m[0m
2026-02-26T16:19:24.3698161Z [0m[1mmodule.custom_domains.azurerm_key_vault_certificate.apim_cert: Still creating... [1m30s elapsed][0m[0m
2026-02-26T16:19:29.3343934Z [0m[1mmodule.storage.azurerm_key_vault_key.cmk: Still creating... [1m30s elapsed][0m[0m
2026-02-26T16:19:34.3705763Z [0m[1mmodule.custom_domains.azurerm_key_vault_certificate.apim_cert: Still creating... [1m40s elapsed][0m[0m
2026-02-26T16:19:39.3350322Z [0m[1mmodule.storage.azurerm_key_vault_key.cmk: Still creating... [1m40s elapsed][0m[0m
2026-02-26T16:19:44.3712656Z [0m[1mmodule.custom_domains.azurerm_key_vault_certificate.apim_cert: Still creating... [1m50s elapsed][0m[0m
2026-02-26T16:19:49.3360538Z [0m[1mmodule.storage.azurerm_key_vault_key.cmk: Still creating... [1m50s elapsed][0m[0m
2026-02-26T16:19:54.3715861Z [0m[1mmodule.custom_domains.azurerm_key_vault_certificate.apim_cert: Still creating... [2m0s elapsed][0m[0m
2026-02-26T16:19:58.7368422Z [0m[1mmodule.custom_domains.azurerm_key_vault_certificate.apim_cert: Creation complete after 2m5s [id=https://scb-preprd-eus2-kv-01.vault.azure.net/certificates/apim-stage/d23f119aeea843c585b73a5b51ff5d20][0m
2026-02-26T16:19:59.3366172Z [0m[1mmodule.storage.azurerm_key_vault_key.cmk: Still creating... [2m0s elapsed][0m[0m
2026-02-26T16:20:03.8312791Z [0m[1mmodule.storage.azurerm_key_vault_key.cmk: Creation complete after 2m5s [id=https://scb-kv-sa-cmk.vault.azure.net/keys/scbpreprdapimeus2sa01-cmk-7690/6fc89e0f7e7f449da1b7540a67bab004][0m
2026-02-26T16:20:03.8671807Z [0m[1mmodule.security.data.azurerm_client_config.current: Reading...[0m[0m
2026-02-26T16:20:03.8686723Z [0m[1mmodule.security.data.azurerm_client_config.current: Read complete after 0s [id=Y2xpZW50Q29uZmlncy9jbGllbnRJZD0wM2NhYzRhNi1lMzViLTQxMTgtOTdjMC03MTc0YmQ1ODI1ZjY7b2JqZWN0SWQ9ZTczZjY3ZGYtMDE5OS00Y2U1LTgyZjEtMzJmNGMwODFhYjlkO3N1YnNjcmlwdGlvbklkPTYxNWRkMzBmLTI1ODUtNGZiOC04MGVkLWJiYWUyZGRjNjQ4ZDt0ZW5hbnRJZD0zNjE1YmQyNi00ZmFlLTQxNWItYTIyMC05Y2VkYWUyMjI0ODk=][0m
2026-02-26T16:20:04.2206562Z [33m╷[0m[0m
2026-02-26T16:20:04.2207178Z [33m│[0m [0m[1m[33mWarning: [0m[0m[1mValue for undeclared variable[0m
2026-02-26T16:20:04.2207593Z [33m│[0m [0m
2026-02-26T16:20:04.2208274Z [33m│[0m [0m[0mThe root module does not declare a variable named
2026-02-26T16:20:04.2208828Z [33m│[0m [0m"rate_limit_period_seconds" but a value was found in file
2026-02-26T16:20:04.2209408Z [33m│[0m [0m"terraform.tfvars". If you meant to use this value, add a "variable" block
2026-02-26T16:20:04.2210321Z [33m│[0m [0mto the configuration.
2026-02-26T16:20:04.2210694Z [33m│[0m [0m
2026-02-26T16:20:04.2211169Z [33m│[0m [0mTo silence these warnings, use TF_VAR_... environment variables to provide
2026-02-26T16:20:04.2211679Z [33m│[0m [0mcertain "global" settings to all configurations in your organization. To
2026-02-26T16:20:04.2212195Z [33m│[0m [0mreduce the verbosity of these warnings, use the -compact-warnings option.
2026-02-26T16:20:04.2212564Z [33m╵[0m[0m
2026-02-26T16:20:04.2212855Z [33m╷[0m[0m
2026-02-26T16:20:04.2213266Z [33m│[0m [0m[1m[33mWarning: [0m[0m[1mValue for undeclared variable[0m
2026-02-26T16:20:04.2213615Z [33m│[0m [0m
2026-02-26T16:20:04.2214067Z [33m│[0m [0m[0mThe root module does not declare a variable named "allowed_ip_ranges" but a
2026-02-26T16:20:04.2214369Z [33m│[0m [0mvalue was found in file "terraform.tfvars". If you meant to use this value,
2026-02-26T16:20:04.2214629Z [33m│[0m [0madd a "variable" block to the configuration.
2026-02-26T16:20:04.2214832Z [33m│[0m [0m
2026-02-26T16:20:04.2215086Z [33m│[0m [0mTo silence these warnings, use TF_VAR_... environment variables to provide
2026-02-26T16:20:04.2215384Z [33m│[0m [0mcertain "global" settings to all configurations in your organization. To
2026-02-26T16:20:04.2215678Z [33m│[0m [0mreduce the verbosity of these warnings, use the -compact-warnings option.
2026-02-26T16:20:04.2215886Z [33m╵[0m[0m
2026-02-26T16:20:04.2216082Z [33m╷[0m[0m
2026-02-26T16:20:04.2216318Z [33m│[0m [0m[1m[33mWarning: [0m[0m[1mValues for undeclared variables[0m
2026-02-26T16:20:04.2216517Z [33m│[0m [0m
2026-02-26T16:20:04.2216770Z [33m│[0m [0m[0mIn addition to the other similar warnings shown, 2 other variable(s)
2026-02-26T16:20:04.2217019Z [33m│[0m [0mdefined without being declared.
2026-02-26T16:20:04.2217214Z [33m╵[0m[0m
2026-02-26T16:20:04.4419042Z [0m[1m[32m
2026-02-26T16:20:04.4419933Z Apply complete! Resources: 2 added, 0 changed, 2 destroyed.
2026-02-26T16:20:04.4420676Z [0m[0m[1m[32m
2026-02-26T16:20:04.4421297Z Outputs:
2026-02-26T16:20:04.4427115Z 
2026-02-26T16:20:04.4428041Z [0maction_group_id = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/actionGroups/scb-preprd-apim-eus2-ag-01"
2026-02-26T16:20:04.4428468Z alert_ids = {
2026-02-26T16:20:04.4428863Z   "apim_capacity" = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scb-preprd-apim-eus2-apim-01-capacity"
2026-02-26T16:20:04.4429422Z   "apim_failed_requests" = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scb-preprd-apim-eus2-apim-01-failed-requests"
2026-02-26T16:20:04.4429992Z   "apim_latency" = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scb-preprd-apim-eus2-apim-01-high-latency"
2026-02-26T16:20:04.4430552Z   "apim_unauthorized" = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scb-preprd-apim-eus2-apim-01-unauthorized"
2026-02-26T16:20:04.4431400Z   "kv_access_denied" = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scb-preprd-eus2-kv-01-access-denied"
2026-02-26T16:20:04.4431941Z   "kv_availability" = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scb-preprd-eus2-kv-01-availability"
2026-02-26T16:20:04.4432478Z   "kv_saturation" = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scb-preprd-eus2-kv-01-saturation"
2026-02-26T16:20:04.4433023Z   "storage_availability" = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scbpreprdapimeus2sa01-availability"
2026-02-26T16:20:04.4433705Z   "storage_latency" = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/metricAlerts/scbpreprdapimeus2sa01-latency"
2026-02-26T16:20:04.4434096Z }
2026-02-26T16:20:04.4434383Z apim_gateway_url = "https://scb-preprd-apim-eus2-apim-01.azure-api.net"
2026-02-26T16:20:04.4434832Z apim_id = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.ApiManagement/service/scb-preprd-apim-eus2-apim-01"
2026-02-26T16:20:04.4435250Z apim_name = "scb-preprd-apim-eus2-apim-01"
2026-02-26T16:20:04.4435531Z apim_private_ips = tolist([
2026-02-26T16:20:04.4435854Z   "10.43.58.4",
2026-02-26T16:20:04.4436098Z ])
2026-02-26T16:20:04.4436385Z app_insights_app_id = "9205b3a4-6246-46f6-9c1c-de34a9b2ae42"
2026-02-26T16:20:04.4436721Z app_insights_connection_string = <sensitive>
2026-02-26T16:20:04.4437181Z app_insights_id = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Insights/components/scb-preprd-apim-eus2-appins-01"
2026-02-26T16:20:04.4437629Z app_insights_name = "scb-preprd-apim-eus2-appins-01"
2026-02-26T16:20:04.4438109Z cmk_key_name = "scbpreprdapimeus2sa01-cmk-7690"
2026-02-26T16:20:04.4438416Z developer_fqdn = "developer.stage.seacoastbank.com."
2026-02-26T16:20:04.4438726Z gateway_fqdn = "api.stage.seacoastbank.com."
2026-02-26T16:20:04.4439138Z keyvault_id = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.KeyVault/vaults/scb-preprd-eus2-kv-01"
2026-02-26T16:20:04.4439543Z keyvault_name = "scb-preprd-eus2-kv-01"
2026-02-26T16:20:04.4440006Z nsg_id = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/networkSecurityGroups/scb-preprd-apim-eus2-nsg-01"
2026-02-26T16:20:04.4440451Z resource_group_name = "scb-preprd-apim-eus2-rg-01"
2026-02-26T16:20:04.4440763Z storage_account_name = "scbpreprdapimeus2sa01"
2026-02-26T16:20:04.4441202Z vnet_id = "/subscriptions/615dd30f-2585-4fb8-80ed-bbae2ddc648d/resourceGroups/scb-preprd-apim-eus2-rg-01/providers/Microsoft.Network/virtualNetworks/scb-preprd-apim-eus2-vnet-01"
2026-02-26T16:20:04.4441638Z vnet_name = "scb-preprd-apim-eus2-vnet-01"
2026-02-26T16:20:04.4474855Z 
2026-02-26T16:20:04.4500674Z [command]/usr/bin/az account clear
2026-02-26T16:20:04.9921179Z ##[section]Finishing: Terraform Init & Apply









pileline 2 error log

│ Error: a resource with the ID "https://scb-preprd-eus2-kv-01.vault.azure.net/certificates/apim-stage/d23f119aeea843c585b73a5b51ff5d20" already exists - to be managed via Terraform this resource needs to be imported into the State. Please see the resource documentation for "azurerm_key_vault_certificate" for more information
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
│ 
╵

##[error]Script failed with exit code: 1
/usr/bin/az account clear
Finishing: Terraform Init & Apply
