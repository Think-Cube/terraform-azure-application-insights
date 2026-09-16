resource "azurerm_application_insights" "main" {
  name                                  = var.name
  location                              = data.azurerm_resource_group.rg.location
  resource_group_name                   = data.azurerm_resource_group.rg.name
  application_type                      = var.application_type
  workspace_id                          = var.workspace_id != null ? var.workspace_id : azurerm_log_analytics_workspace.main[0].id
  daily_data_cap_in_gb                  = var.daily_data_cap_in_gb
  daily_data_cap_notifications_disabled = var.daily_data_cap_notifications_disabled
  retention_in_days                     = var.retention_in_days
  sampling_percentage                   = var.sampling_percentage
  disable_ip_masking                    = var.disable_ip_masking
  local_authentication_disabled         = var.local_authentication_disabled
  internet_ingestion_enabled            = var.internet_ingestion_enabled
  internet_query_enabled                = var.internet_query_enabled
  force_customer_storage_for_profiler   = var.force_customer_storage_for_profiler
  tags                                  = var.tags
}
