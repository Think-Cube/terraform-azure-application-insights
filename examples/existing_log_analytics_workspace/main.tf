module "monitoring_existing_law" {
  source                                    = "../../modules/application-insights"
  environment                               = "prod"
  region                                    = "westeurope"
  resource_group_name                       = "rg-prod"
  application_insights_name                 = "myapp"
  application_insights_type                 = "web"
  application_insights_daily_data_cap_in_gb = 5
  log_analytics_workspace_id                = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-prod/providers/Microsoft.OperationalInsights/workspaces/existing-law"
  default_tags = {
    environment = "prod"
    project     = "example"
  }
}
