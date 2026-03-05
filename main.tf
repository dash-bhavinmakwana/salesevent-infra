# 1. Resource Group for the environment
resource "azurerm_resource_group" "main" {
  name     = "rg-${var.project_name}-${var.env}"
  location = var.location
}

# 2. Call the Networking Module
module "networking" {
  source   = "./modules/networking"
  rg_name  = azurerm_resource_group.main.name
  location = azurerm_resource_group.main.location
  env      = var.env
}

# 3. Call the Storage Module
module "storage" {
  source   = "./modules/storage"
  st_name  = "st${var.project_name}${var.env}"
  rg_name  = azurerm_resource_group.main.name
  location = azurerm_resource_group.main.location
}

# 4. Create the 2 Flutter Static Apps (Free)
module "flutter_apps" {
  for_each = toset(var.flutter_app_names)
  source   = "./modules/static_app"
  app_name = each.key
  rg_name  = azurerm_resource_group.main.name
  location = azurerm_resource_group.main.location
}

# 5. Create the 1 Web App (F1 Free)
module "main_web_app" {
  source   = "./modules/web_app"
  app_name = "${var.project_name}-web"
  rg_name  = azurerm_resource_group.main.name
  location = azurerm_resource_group.main.location
}
