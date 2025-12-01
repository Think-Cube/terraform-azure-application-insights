# Terraform Application Insights Module – Use Existing Log Analytics Workspace

This example demonstrates how to deploy **Application Insights** using an **existing Log Analytics Workspace**.

## Description

- Application Insights instance is created for monitoring an application.
- The existing Log Analytics Workspace is referenced by its resource ID, so no new workspace is created.
- Suitable for **production environments** where multiple applications share a single Log Analytics Workspace.

## Features

- Reuse of existing Log Analytics Workspace to consolidate logs and telemetry.
- Automatic naming of Application Insights instance.
- Configurable daily data cap and managed identity.
- Tags applied consistently for tracking and billing purposes.

```
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
```