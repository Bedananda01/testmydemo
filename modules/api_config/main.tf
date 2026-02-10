# 1. Import the backend API by defining an OpenAPI spec in-line
resource "azurerm_api_management_api" "hello_api" {
  name                = var.api_name
  api_management_name = var.api_management_name
  resource_group_name = var.resource_group_name
  revision            = "1"
  display_name        = var.api_display_name
  path                = "hello-service" # The path that APIM will expose
  protocols           = ["https"]
  service_url         = var.backend_api_base_url

  # Define the API structure using an OpenAPI spec
  import {
    content_format = "openapi+json"
    content_value = jsonencode({
      "openapi" : "3.0.1",
      "info" : {
        "title" : var.api_display_name,
        "version" : "1.0"
      },
      "paths" : {
        "/hello" : { # This is the specific operation path
          "get" : {
            "summary" : "Simple Hello"
          }
        }
      }
    })
  }
}

# 2. Create the Product
resource "azurerm_api_management_product" "main_product" {
  product_id          = var.product_id
  api_management_name = var.api_management_name
  resource_group_name = var.resource_group_name
  display_name        = var.product_name
  subscription_required = true
  approval_required   = false
  published           = true
}

# 3. Link the API to the Product
resource "azurerm_api_management_product_api" "link" {
  api_name            = azurerm_api_management_api.hello_api.name
  product_id          = azurerm_api_management_product.main_product.product_id
  api_management_name = var.api_management_name
  resource_group_name = var.resource_group_name
}

# 4. Apply a rate limit policy to the Product
resource "azurerm_api_management_product_policy" "rate_limit_policy" {
  product_id          = azurerm_api_management_product.main_product.product_id
  api_management_name = var.api_management_name
  resource_group_name = var.resource_group_name

  xml_content = <<-XML
    <policies>
        <inbound>
            <base />
            <!-- Limit call rate to 15 calls per 60 seconds per subscription key. -->
            <rate-limit-by-key calls="15" renewal-period="60" counter-key="@(context.Subscription.Id)" />
        </inbound>
        <backend>
            <base />
        </backend>
        <outbound>
            <base />
        </outbound>
        <on-error>
            <base />
        </on-error>
    </policies>
  XML
}
