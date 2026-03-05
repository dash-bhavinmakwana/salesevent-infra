# 1. Create the Resource Group
resource "azurerm_resource_group" "main" {
  name     = "rg-salesevent-dev"
  location = var.location
}

# 2. Networking Module
module "networking" {
  source   = "../../modules/networking"
  rg_name  = azurerm_resource_group.main.name
  location = azurerm_resource_group.main.location
  env      = var.env
}

# 3. Two Flutter Static Apps (Free Tier)
module "flutter_apps" {
  for_each = toset(["flutter-app-one", "flutter-app-two"])
  source   = "../../modules/static_app"
  app_name = each.key
  rg_name  = azurerm_resource_group.main.name
  location = azurerm_resource_group.main.location
}

# 4. One Web App (F1 Free Tier)
module "web_app" {
  source   = "../../modules/web_app"
  app_name = "sales-web-portal"
  rg_name  = azurerm_resource_group.main.name
  location = azurerm_resource_group.main.location
}

# 5. Storage Account
module "storage" {
  source   = "../../modules/storage"
  st_name  = "stsaleseventdev001"
  rg_name  = azurerm_resource_group.main.name
  location = azurerm_resource_group.main.location
}
