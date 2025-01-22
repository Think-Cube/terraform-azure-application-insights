resource "azurerm_application_insights" "main" {
  name                 = "${var.environment}-${var.application_insights_name}-ai"
  location             = data.azurerm_resource_group.rg.location
  resource_group_name  = data.azurerm_resource_group.rg.name
  application_type     = var.application_insights_type
  workspace_id         = azurerm_log_analytics_workspace.main.id
  tags                 = var.default_tags
  daily_data_cap_in_gb = var.application_insights_daily_data_cap_in_gb
  depends_on           = [azurerm_log_analytics_workspace.main]
}
