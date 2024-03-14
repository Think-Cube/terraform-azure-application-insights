output "application_insights_id" {
  description = "The ID of the created Application Insights instance."
  value       = azurerm_application_insights.main.id
}

output "log_analytics_workspace_id" {
  description = "The ID of the created Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.main.id
}

output "log_analytics_workspace_primary_shared_key" {
  description = "Primary shared key of the created Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.main.primary_shared_key
}

output "log_analytics_workspace_secondary_shared_key" {
  description = "Secondary shared key of the created Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.main.secondary_shared_key
}

output "log_analytics_workspace_customer_id" {
  description = "Customer ID of the created Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.main.customer_id
}
