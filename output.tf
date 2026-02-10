output "api_management_gateway_url" {
  description = "The gateway URL of the API Management service."
  value       = module.apim.gateway_url
}

output "api_management_public_ip" {
  description = "The public IP address of the API Management service."
  value       = module.apim.public_ip
}

output "api_management_identity_principal_id" {
  description = "The Principal ID of the System-Assigned Managed Identity for APIM."
  value       = module.apim.identity_principal_id
}


output "product_id" {
  description = "The ID of the newly created APIM product."
  value       = module.api_config.product_id
}

