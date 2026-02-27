
│ "registry.terraform.io/hashicorp/azurerm" to obtain schema: fork/exec
│ .terraform/providers/registry.terraform.io/hashicorp/azurerm/4.62.0/linux_amd64/terraform-provider-azurerm_v4.62.0_x5:
│ permission denied.
│ - Failed to obtain provider schema: Could not load the schema for provider
│ registry.terraform.io/hashicorp/random: failed to instantiate provider
│ "registry.terraform.io/hashicorp/random" to obtain schema: fork/exec
│ .terraform/providers/registry.terraform.io/hashicorp/random/3.8.1/linux_amd64/terraform-provider-random_v3.8.1_x5:
│ permission denied.
│ - Failed to obtain provider schema: Could not load the schema for provider
│ registry.terraform.io/hashicorp/time: failed to instantiate provider
│ "registry.terraform.io/hashicorp/time" to obtain schema: fork/exec
│ .terraform/providers/registry.terraform.io/hashicorp/time/0.13.1/linux_amd64/terraform-provider-time_v0.13.1_x5:
│ permission denied..
╵

##[error]╷
│ Error: Failed to load plugin schemas
│ 
│ Error while loading schemas for plugin components: 3 problems:
│ 
│ - Failed to obtain provider schema: Could not load the schema for provider
│ registry.terraform.io/hashicorp/azurerm: failed to instantiate provider
│ "registry.terraform.io/hashicorp/azurerm" to obtain schema: fork/exec
│ .terraform/providers/registry.terraform.io/hashicorp/azurerm/4.62.0/linux_amd64/terraform-provider-azurerm_v4.62.0_x5:
│ permission denied.
##[error]Script has output to stderr. Failing as failOnStdErr is set to true.
/usr/bin/az account clear
Finishing: Terraform Init & Apply
