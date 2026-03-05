variable "project_name" {
  type        = string
  description = "The name of the project used in resource naming"
  default     = "myproject"
}

variable "env" {
  type        = string
  description = "The deployment environment (dev, staging, prod)"
  default     = "dev"
}

variable "location" {
  type        = string
  description = "Azure region for all resources"
  default     = "East US"
}

variable "flutter_app_names" {
  type        = list(string)
  description = "List of names for Flutter static web apps (exactly 2)"
  default     = ["customer-app", "admin-app"]
}
