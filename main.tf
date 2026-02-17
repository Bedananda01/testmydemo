terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Look up the existing resource group
data "azurerm_resource_group" "existing" {
  name = var.existing_resource_group_name
}

# Local variables for naming
locals {
  apim_name    = "${var.project_name}-${var.environment}-apim"
  product_id   = lower(replace(var.product_name, " ", "-"))
  api_name     = lower(replace(var.api_display_name, " ", "-"))
}

# Deploy the APIM instance using the apim module
module "apim" {
 source = "./modules/apim"

  resource_group_name = data.azurerm_resource_group.existing.name
  location            = data.azurerm_resource_gSroup.existing.location
  apim_name           = local.apim_name
  publisher_name      = var.apim_publisher_name
  publisher_email     = var.apim_publisher_email
  sku_name            = var.apim_sku_name
}

module "api_config" {
  source = "./modules/api_config"

  # Pass in values from the APIM instance and root variables
  api_management_name = module.apim.apim_name
  resource_group_name = data.azurerm_resource_group.existing.name

  # API configuration
  api_name             = local.api_name
  api_display_name     = var.api_display_name
  backend_api_base_url = var.backend_api_base_url

  # Product and Policy configuration
  product_id   = local.product_id
  product_name = var.product_name
}
