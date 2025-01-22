output "id" {
  description = "The ID of the Application Insights component."
  value       = azurerm_application_insights.main.id
  sensitive   = false
}

output "instrumentation_key" {
  description = "The Instrumentation Key associated with this Application Insights component, used for tracking and monitoring telemetry data."
  value       = azurerm_application_insights.main.instrumentation_key
  sensitive   = false
}

output "app_id" {
  description = "The App ID associated with this Application Insights component, used for identifying the Application Insights resource."
  value       = azurerm_application_insights.main.app_id
  sensitive   = false
}
