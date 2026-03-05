output "flutter_app_urls" {
  value = {
    for name, app in module.flutter_apps : name => app.default_hostname
  }
  description = "The public URLs for the Flutter Static Web Apps"
}

output "web_app_url" {
  value       = module.main_web_app.default_hostname
  description = "The public URL for the main Web App"
}
