output "gateway_url" {
  description = "The gateway URL of the APIM service."
  value       = azurerm_api_management.apim.gateway_url
}

output "public_ip" {
  description = "The public IP address of the APIM service."
  value       = azurerm_public_ip.apim_pip.ip_address
}

output "identity_principal_id" {
  description = "The Principal ID for the System-Assigned Managed Identity."
  value       = azurerm_api_management.apim.identity[0].principal_id
}
