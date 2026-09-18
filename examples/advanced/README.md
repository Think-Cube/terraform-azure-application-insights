# Example: Advanced

Full-featured example for `terraform-azure-application-insights`.

```hcl
module "application_insights" {
  source = "github.com/Think-Cube/terraform-azure-application-insights?ref=v1.0.0"

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
}```` 

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_application_insights"></a> [application\_insights](#module\_application\_insights) | github.com/Think-Cube/terraform-azure-application-insights | v1.0.0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->