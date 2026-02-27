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
