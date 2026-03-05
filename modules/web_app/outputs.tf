output "webapp_url" {
  value       = azurerm_linux_web_app.this.default_hostname
  description = "The default hostname of the Web App"
}

output "webapp_id" {
  value       = azurerm_linux_web_app.this.id
  description = "The ID of the Web App"
}

output "service_plan_id" {
  value       = azurerm_service_plan.this.id
  description = "The ID of the App Service Plan"
}
