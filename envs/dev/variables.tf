variable "env" {
  type        = string
  description = "The environment name (dev, prod, etc.)"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "flutter_app_names" {
  type    = list(string)
  default = ["customer-app", "admin-app"]
}
