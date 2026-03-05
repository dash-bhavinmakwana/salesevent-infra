variable "app_name" {}
variable "rg_name"  {}
variable "location" {}

resource "azurerm_static_web_app" "flutter" {
  name                = "swa-${var.app_name}"
  resource_group_name = var.rg_name
  location            = var.location
  sku_tier            = "Free"
  sku_size            = "Free"
}

output "default_hostname" { value = azurerm_static_web_app.flutter.default_hostname }
