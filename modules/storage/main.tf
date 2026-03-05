variable "st_name"  {}
variable "rg_name"  {}
variable "location" {}

resource "azurerm_storage_account" "this" {
  name                     = var.st_name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS" # Lowest cost
  
  # Allow static site hosting if needed later
  static_website {
    index_document = "index.html"
  }
}

output "storage_endpoint" { value = azurerm_storage_account.this.primary_web_endpoint }
