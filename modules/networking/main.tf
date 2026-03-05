resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${var.project_name}-${var.env}"
  address_space       = [var.vnet_cidr]
  location            = var.location
  resource_group_name = var.rg_name

  tags = var.tags
}

resource "azurerm_subnet" "frontend" {
  name                 = "snet-frontend-${var.env}"
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.frontend_subnet_cidr]
}

resource "azurerm_subnet" "backend" {
  name                 = "snet-backend-${var.env}"
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.backend_subnet_cidr]
}
