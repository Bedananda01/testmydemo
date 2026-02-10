variable "existing_resource_group_name" {
  description = "The name of the existing resource group to use."
  type        = string
  default     = "RG1"
}

variable "project_name" {
  description = "A name for the project to prefix resources."
  type        = string
  default     = "scb"
}

variable "environment" {
  description = "The deployment environment name (e.g., prd, dev)."
  type        = string
  default     = "preprd"
}

variable "apim_publisher_name" {
  description = "The name of the APIM publisher."
  type        = string
  default     = "MyCompany"
}

variable "apim_publisher_email" {
  description = "The email of the APIM publisher."
  type        = string
  default     = "contact@example.com"
}

variable "apim_sku_name" {
  description = "The SKU for the API Management service."
  type        = string
  default     = "Developer_1"
}


variable "product_name" {
  description = "The display name for the new APIM Product."
  type        = string
  default     = "Starter"
}

variable "api_display_name" {
  description = "The display name for the new API in APIM."
  type        = string
  default     = "Hello API"
}

variable "backend_api_base_url" {
  description = "The base URL of the backend service to be imported."
  type        = string
  default     = "https://api.sea123.com"
}
