# Terraform Application Insights Module – Create New Log Analytics Workspace

This example demonstrates how to deploy **Application Insights** along with a **new Log Analytics Workspace**.

## Description

- Application Insights instance is created for monitoring an application.
- A new Log Analytics Workspace is created automatically because no existing workspace ID is provided.
- Suitable for **development or testing environments** where a dedicated workspace is needed.

## Features

- Automatic naming of Application Insights and Log Analytics Workspace.
- Configurable workspace SKU, retention, and daily quota.
- Optional managed identity and tagging applied.


```
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
```