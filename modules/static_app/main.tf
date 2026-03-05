resource "azurerm_static_web_app" "this" {
  name                = "swa-${var.app_name}-${var.env}"
  resource_group_name = var.rg_name
  location            = var.location
  sku_tier            = "Free"
  sku_size            = "Free"

  tags = var.tags
}
