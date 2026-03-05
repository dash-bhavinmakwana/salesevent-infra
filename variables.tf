variable "project_name" {
  type    = string
  default = "salesevent"
}

variable "env" {
  type    = string
  default = "dev"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "flutter_app_names" {
  type    = list(string)
  default = ["customer-app", "admin-app"]
}
