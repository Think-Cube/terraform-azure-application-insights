# Terraform Module — Azure Application Insights

Provisions an `azurerm_application_insights` resource with configurable retention, sampling, and workspace integration.

## Usage

```hcl
module "application_insights" {
  source = "github.com/Think-Cube/terraform-azure-application-insights?ref=v1.0.0"

  name                = "my-appinsights"
  resource_group_name = "my-rg"
  location            = "West Europe"
  application_type    = "web"

  retention_in_days   = 90
  sampling_percentage = 100
  workspace_id        = "/subscriptions/00000000/resourceGroups/my-rg/providers/Microsoft.OperationalInsights/workspaces/my-law"

  tags = {
    environment = "dev"
    managed_by  = "terraform"
  }
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_application_insights.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights) | resource |
| [azurerm_log_analytics_workspace.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_type"></a> [application\_type](#input\_application\_type) | Specifies the type of Application Insights to create. Valid values are ios, java, MobileCenter, Node.JS, other, phone, store, and web. Changing this forces a new resource to be created. | `string` | `"web"` | no |
| <a name="input_daily_data_cap_in_gb"></a> [daily\_data\_cap\_in\_gb](#input\_daily\_data\_cap\_in\_gb) | Specifies the Application Insights component daily data volume cap in GB. | `number` | `null` | no |
| <a name="input_daily_data_cap_notifications_disabled"></a> [daily\_data\_cap\_notifications\_disabled](#input\_daily\_data\_cap\_notifications\_disabled) | Specifies if a notification email will be sent when the daily data volume cap is met. | `bool` | `null` | no |
| <a name="input_disable_ip_masking"></a> [disable\_ip\_masking](#input\_disable\_ip\_masking) | By default the real client IP is masked as 0.0.0.0 in the logs. Use this argument to disable masking and log the real client IP. | `bool` | `false` | no |
| <a name="input_force_customer_storage_for_profiler"></a> [force\_customer\_storage\_for\_profiler](#input\_force\_customer\_storage\_for\_profiler) | Should the Application Insights component force users to create their own storage account for profiling? | `bool` | `false` | no |
| <a name="input_internet_ingestion_enabled"></a> [internet\_ingestion\_enabled](#input\_internet\_ingestion\_enabled) | Should the Application Insights component support ingestion over the Public Internet? | `bool` | `true` | no |
| <a name="input_internet_query_enabled"></a> [internet\_query\_enabled](#input\_internet\_query\_enabled) | Should the Application Insights component support querying over the Public Internet? | `bool` | `true` | no |
| <a name="input_local_authentication_disabled"></a> [local\_authentication\_disabled](#input\_local\_authentication\_disabled) | Disable Non-Azure AD based Auth. | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | The location/region where the Application Insights is created. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_daily_quota_gb"></a> [log\_analytics\_workspace\_daily\_quota\_gb](#input\_log\_analytics\_workspace\_daily\_quota\_gb) | The daily data ingestion quota in GB for the Log Analytics Workspace. -1 means unlimited. | `number` | `-1` | no |
| <a name="input_log_analytics_workspace_name"></a> [log\_analytics\_workspace\_name](#input\_log\_analytics\_workspace\_name) | The name of the Log Analytics Workspace to create (used when workspace\_id is not provided). Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_log_analytics_workspace_retention_in_days"></a> [log\_analytics\_workspace\_retention\_in\_days](#input\_log\_analytics\_workspace\_retention\_in\_days) | The number of days to retain data in the Log Analytics Workspace. | `number` | `30` | no |
| <a name="input_log_analytics_workspace_sku"></a> [log\_analytics\_workspace\_sku](#input\_log\_analytics\_workspace\_sku) | The SKU for the Log Analytics Workspace. Options include Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018. | `string` | `"PerGB2018"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the Application Insights resource. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the Application Insights component. | `string` | n/a | yes |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | Specifies the retention period in days. Possible values are 30, 60, 90, 120, 180, 270, 365, 550 or 730. | `number` | `null` | no |
| <a name="input_sampling_percentage"></a> [sampling\_percentage](#input\_sampling\_percentage) | Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry. Accepted values are 0 to 100. | `number` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_workspace_id"></a> [workspace\_id](#input\_workspace\_id) | Specifies the id of a log analytics workspace resource. If provided the module will not create a new Log Analytics Workspace. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_id"></a> [app\_id](#output\_app\_id) | The App ID associated with this Application Insights component. |
| <a name="output_connection_string"></a> [connection\_string](#output\_connection\_string) | The Connection String for this Application Insights component. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the Application Insights component. |
| <a name="output_instrumentation_key"></a> [instrumentation\_key](#output\_instrumentation\_key) | The Instrumentation Key for this Application Insights component. |
| <a name="output_name"></a> [name](#output\_name) | The name of the Application Insights component. |
<!-- END_TF_DOCS -->