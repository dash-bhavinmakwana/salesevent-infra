output "default_hostname" {
  value       = azurerm_static_web_app.this.default_hostname
  description = "The default hostname of the Static Web App"
}

output "id" {
  value       = azurerm_static_web_app.this.id
  description = "The ID of the Static Web App"
}

output "api_key" {
  value       = azurerm_static_web_app.this.api_key
  sensitive   = true
  description = "The API key for deploying to the Static Web App"
}
