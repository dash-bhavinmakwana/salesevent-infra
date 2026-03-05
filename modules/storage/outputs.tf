output "storage_account_id" {
  value       = azurerm_storage_account.this.id
  description = "The ID of the Storage Account"
}

output "storage_account_name" {
  value       = azurerm_storage_account.this.name
  description = "The name of the Storage Account"
}

output "primary_connection_string" {
  value       = azurerm_storage_account.this.primary_connection_string
  sensitive   = true
  description = "The primary connection string for the Storage Account"
}

output "primary_blob_endpoint" {
  value       = azurerm_storage_account.this.primary_blob_endpoint
  description = "The primary blob endpoint of the Storage Account"
}
