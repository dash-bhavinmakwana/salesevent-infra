variable "project_name" {
  type        = string
  description = "Project name for resource naming"
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

variable "vnet_cidr" {
  type        = string
  description = "CIDR block for the Virtual Network"
  default     = "10.0.0.0/16"
}

variable "frontend_subnet_cidr" {
  type        = string
  description = "CIDR block for the frontend subnet"
  default     = "10.0.1.0/24"
}

variable "backend_subnet_cidr" {
  type        = string
  description = "CIDR block for the backend subnet"
  default     = "10.0.2.0/24"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all resources"
  default     = {}
}
