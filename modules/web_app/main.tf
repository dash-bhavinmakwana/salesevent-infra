variable "app_name" {}
variable "rg_name"  {}
variable "location" {}

resource "azurerm_service_plan" "free_plan" {
  name                = "asp-${var.app_name}-free"
  resource_group_name = var.rg_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "F1" # Free Tier
}

resource "azurerm_linux_web_app" "app" {
  name                = "app-${var.app_name}"
  resource_group_name = var.rg_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.free_plan.id

  site_config {
    always_on = false # Required for Free tier
  }
}

output "webapp_url" { value = azurerm_linux_web_app.app.default_hostname }
