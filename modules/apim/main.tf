# Create a Public IP address for the APIM service
resource "azurerm_public_ip" "apim_pip" {
  name                = "${var.apim_name}-pip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

# Create the API Management instance
resource "azurerm_api_management" "apim" {
  name                = var.apim_name
  location            = var.location
  resource_group_name = var.resource_group_name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  sku_name            = var.sku_name

  # Assign the public IP address
  public_ip_address_id = azurerm_public_ip.apim_pip.id

  # Create a System-Assigned Managed Identity for this APIM instance
  identity {
    type = "SystemAssigned"
  }

  tags = {
    "environment" = "preprd"
  }
}
