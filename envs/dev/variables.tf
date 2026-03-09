variable "project_name" {
  type        = string
  description = "The name of the project used in resource naming"
}

variable "env" {
  type        = string
  description = "The deployment environment (dev, staging, prod)"
}

variable "location" {
  type        = string
  description = "Azure region for all resources"
}

variable "flutter_app_names" {
  type        = list(string)
  description = "List of names for Flutter static web apps"
}

variable "web_app_name" {
  type        = string
  description = "Name of the main web app"
}
