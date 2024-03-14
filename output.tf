output "id" {
  description = "ID of the Application Insights component."
  value       = azurerm_application_insights.main.id
  sensitive   = false
}
output "instrumentation_key" {
  description = "App ID associated with this Application Insights component."
  value       = azurerm_application_insights.main.instrumentation_key
  sensitive   = false
}

output "app_id" {
  description = "Instrumentation Key for this Application Insights component."
  value       = azurerm_application_insights.main.app_id
  sensitive   = false
}