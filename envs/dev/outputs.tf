output "resource_group_name" {
  value       = var.resource_group_name
  description = "The name of the resource group"
}

output "flutter_app_urls" {
  value = {
    for name, app in module.flutter_apps : name => "https://${app.default_hostname}"
  }
  description = "The public URLs of the Flutter Static Web Apps"
}

output "web_app_url" {
  value       = "https://${module.web_app.webapp_url}"
  description = "The public URL of the Web App"
}

output "storage_account_name" {
  value       = module.storage.storage_account_name
  description = "The name of the Storage Account"
}

output "vnet_id" {
  value       = module.networking.vnet_id
  description = "The ID of the Virtual Network"
}
