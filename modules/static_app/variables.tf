variable "app_name" {
  type        = string
  description = "Name of the Flutter static web app"
}

variable "env" {
  type        = string
  description = "Environment name (dev, prod, etc.)"
}

variable "rg_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all resources"
  default     = {}
}
