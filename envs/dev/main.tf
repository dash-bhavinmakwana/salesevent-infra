# Resource Group
resource "azurerm_resource_group" "main" {
  name     = "rg-${var.project_name}-${var.env}"
  location = var.location
  tags     = local.common_tags
}

# Networking — VNet + Subnets
module "networking" {
  source       = "../../modules/networking"
  project_name = var.project_name
  env          = var.env
  rg_name      = azurerm_resource_group.main.name
  location     = azurerm_resource_group.main.location
  vnet_cidr    = "10.0.0.0/16"
  tags         = local.common_tags
}

# Flutter Static Web Apps (x2) — FREE TIER
module "flutter_apps" {
  for_each = toset(var.flutter_app_names)
  source   = "../../modules/static_app"
  app_name = each.key
  env      = var.env
  rg_name  = azurerm_resource_group.main.name
  location = azurerm_resource_group.main.location
  tags     = local.common_tags
}

# Web App (x1) — F1 FREE TIER
module "web_app" {
  source   = "../../modules/web_app"
  app_name = var.web_app_name
  env      = var.env
  rg_name  = azurerm_resource_group.main.name
  location = azurerm_resource_group.main.location
  tags     = local.common_tags
}

# Storage Account — Standard LRS (lowest cost)
module "storage" {
  source   = "../../modules/storage"
  st_name  = "st${var.project_name}${var.env}"
  rg_name  = azurerm_resource_group.main.name
  location = azurerm_resource_group.main.location
  tags     = local.common_tags
}

# Local values
locals {
  common_tags = {
    environment = var.env
    project     = var.project_name
    managed_by  = "terraform"
  }
}
