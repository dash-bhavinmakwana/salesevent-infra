resource "azurerm_service_plan" "this" {
  name                = "asp-${var.app_name}-${var.env}"
  resource_group_name = var.rg_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "F1" # Free Tier

  tags = var.tags
}

resource "azurerm_linux_web_app" "this" {
  name                = "app-${var.app_name}-${var.env}"
  resource_group_name = var.rg_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.this.id

  site_config {
    always_on = false # Must be false on Free tier
  }

  tags = var.tags
}
