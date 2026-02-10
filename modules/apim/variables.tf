variable "resource_group_name" {
  description = "The name of the resource group where APIM will be created."
  type        = string
}

variable "location" {
  description = "The Azure region for the resources."
  type        = string
}

variable "apim_name" {
  description = "The name of the API Management service."
  type        = string
}

variable "publisher_name" {
  description = "The name of the APIM publisher."
  type        = string
}

variable "publisher_email" {
  description = "The email of the APIM publisher."
  type        = string
}

variable "sku_name" {
  description = "The SKU for the API Management service."
  type        = string
}
