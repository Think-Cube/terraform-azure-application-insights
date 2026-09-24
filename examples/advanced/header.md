# Example: Advanced — Azure Application Insights

Provisions an Azure Application Insights workspace for application monitoring. Full-featured example with optional configuration blocks enabled.

## Usage

```hcl
module "application_insights" {
  source = "../.."

  name                = "appi-prod-example"
  resource_group_name = "rg-example"
  location            = "West Europe"
  application_type    = "web"

  # Attach to existing Log Analytics Workspace
  workspace_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-example/providers/Microsoft.OperationalInsights/workspaces/law-prod-example"

  retention_in_days                     = 90
  daily_data_cap_in_gb                  = 5
  daily_data_cap_notifications_disabled = false
  sampling_percentage                   = 50
  disable_ip_masking                    = false
  local_authentication_disabled         = true
  internet_ingestion_enabled            = false
  internet_query_enabled                = false

  tags = {
    environment = "prod"
    managed_by  = "terraform"
  }
}
```