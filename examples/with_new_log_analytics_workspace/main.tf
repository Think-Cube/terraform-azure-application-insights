module "monitoring_create_law" {
  source                                    = "./terraform-azure-application-insights"
  environment                               = "dev"
  region                                    = "westeurope"
  resource_group_name                       = "rg-example"
  application_insights_name                 = "myapp"
  application_insights_type                 = "web"
  application_insights_daily_data_cap_in_gb = 1
  log_analytics_workspace_name              = "myapp-law"
  log_analytics_workspace_sku               = "PerGB2018"
  log_analytics_workspace_retention_in_days = 30
  log_analytics_workspace_daily_quota_gb    = 2
  log_analytics_workspace_id                = null
  default_tags = {
    environment = "dev"
    project     = "example"
  }
}
