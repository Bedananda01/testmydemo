during the import i see two erro-

1-╷
│ Error: Cannot import non-existent remote object
│ 
│ While attempting to import an existing object to
│ "module.storage.azurerm_key_vault_key.cmk", the provider detected that no
│ object exists with the given id. Only pre-existing objects can be imported;
│ check that the id is correct and that it is associated with the provider's
│ configured region or endpoint, or use "terraform apply" to create a new
│ remote object for this resource.
╵

✅ CMK import attempted (non-fatal).
✅ Role assignment already tracked in state. Skipping import.


2-╷
│ Error: a resource with the ID "https://scb-kv-sa-cmk.vault.azure.net/keys/scbpreprdapimeus2sa01-cmk-7690/6fc89e0f7e7f449da1b7540a67bab004" already exists - to be managed via Terraform this resource needs to be imported into the State. Please see the resource documentation for "azurerm_key_vault_key" for more information
│ 
│   with module.storage.azurerm_key_vault_key.cmk,
│   on ../../modules/storage/main.tf line 50, in resource "azurerm_key_vault_key" "cmk":
│   50: resource "azurerm_key_vault_key" "cmk" {
│ 
╵

##[error]Script failed with exit code: 1
