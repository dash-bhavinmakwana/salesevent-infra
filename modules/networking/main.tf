variable "rg_name"  {}
variable "location" {}
variable "env"      {}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${var.env}"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.rg_name
}

resource "azurerm_subnet" "frontend" {
  name                 = "snet-frontend"
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "backend" {
  name                 = "snet-backend"
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

output "vnet_id" { value = azurerm_virtual_network.vnet.id }
