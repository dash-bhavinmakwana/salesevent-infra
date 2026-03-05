output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "The ID of the Virtual Network"
}

output "vnet_name" {
  value       = azurerm_virtual_network.vnet.name
  description = "The name of the Virtual Network"
}

output "frontend_subnet_id" {
  value       = azurerm_subnet.frontend.id
  description = "The ID of the frontend subnet"
}

output "backend_subnet_id" {
  value       = azurerm_subnet.backend.id
  description = "The ID of the backend subnet"
}
