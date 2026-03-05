variable "st_name" {
  type        = string
  description = "Storage account name (3-24 chars, lowercase alphanumeric only)"

  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.st_name))
    error_message = "Storage account name must be 3-24 lowercase alphanumeric characters."
  }
}

variable "rg_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "replication_type" {
  type        = string
  description = "Storage replication type: LRS (cheapest), GRS, ZRS, etc."
  default     = "LRS"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all resources"
  default     = {}
}
