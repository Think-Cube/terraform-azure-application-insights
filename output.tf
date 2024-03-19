output "azurerm_application_insights_id" {
  description = "The ID of the Application Insights component."
  value = azurerm_application_insights.main.id
  sensitive = false
}

output "azurerm_application_insights_app_id" {
  description = "The App ID associated with this Application Insights component."
  value = azurerm_application_insights.main.app_id
  sensitive = false
}

output "azurerm_application_insights_instrumentation_key" {
  description = "The Instrumentation Key for this Application Insights component."
  value = azurerm_application_insights.main.instrumentation_key
  sensitive = true
}

output "azurerm_application_insights_connection_string" {
  description = "The Connection String for this Application Insights component."
  value = azurerm_application_insights.main.connection_string
  sensitive = true
}

output "azurerm_log_analytics_workspace_id" {
  description = "The Log Analytics Workspace ID."
  value = azurerm_log_analytics_workspace.main.id
  sensitive = false
}

output "azurerm_log_analytics_workspace_primary_shared_key" {
  description = "The Primary shared key for the Log Analytics Workspace."
  value = azurerm_log_analytics_workspace.main.primary_shared_key
  sensitive = true
}

output "azurerm_log_analytics_workspace_secondary_shared_key" {
  description = "The Secondary shared key for the Log Analytics Workspace."
  value = azurerm_log_analytics_workspace.main.secondary_shared_key
  sensitive = true
}

output "azurerm_log_analytics_workspace_workspace_id" {
  description = "The Workspace (or Customer) ID for the Log Analytics Workspace."
  value = azurerm_log_analytics_workspace.main.workspace_id
  sensitive = false
}