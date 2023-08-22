variable "resource_group_name" {
  description = "Resource groupe name"
}

variable "location" {
  description = "Location of Azure resource"
  default     = "West Europe"
}

variable "service_plan_name" {
  description = "Service plan name"
}

variable "app_name" {
  description = "Name of application"
}

variable "sp_sku"{
  description = "Service plan sku"
  default = "Standard"
}

variable "ftps_state" {
  default = "AllAllowed"
}
