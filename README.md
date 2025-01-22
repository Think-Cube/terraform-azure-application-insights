<!-- BEGIN_TF_DOCS -->
#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 4.14.0 |

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 4.14.0 |

#### Resources

| Name | Type |
|------|------|
| [azurerm_application_insights.main](https://registry.terraform.io/providers/hashicorp/azurerm/4.14.0/docs/resources/application_insights) | resource |
| [azurerm_log_analytics_workspace.main](https://registry.terraform.io/providers/hashicorp/azurerm/4.14.0/docs/resources/log_analytics_workspace) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/4.14.0/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/4.14.0/docs/data-sources/resource_group) | data source |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_insights_daily_data_cap_in_gb"></a> [application\_insights\_daily\_data\_cap\_in\_gb](#input\_application\_insights\_daily\_data\_cap\_in\_gb) | The daily data volume cap in GB for the Application Insights component. The default is 100 GB. | `number` | `100` | no |
| <a name="input_application_insights_name"></a> [application\_insights\_name](#input\_application\_insights\_name) | The name of the Application Insights resource. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_application_insights_type"></a> [application\_insights\_type](#input\_application\_insights\_type) | The type of Application Insights to create. Valid values are ios, java, MobileCenter, Node.JS, other, phone, store, and web (for ASP.NET). Changing this forces a new resource to be created. | `string` | `"web"` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | A mapping of tags to assign to the resource. These tags can help categorize and organize the resource within Azure. | `map(any)` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Variable used for backend container name key, typically used to distinguish between different environments such as dev, prod, etc. | `string` | `"dev"` | no |
| <a name="input_log_analytics_workspace_daily_quota_gb"></a> [log\_analytics\_workspace\_daily\_quota\_gb](#input\_log\_analytics\_workspace\_daily\_quota\_gb) | The daily data ingestion quota in GB for the Log Analytics Workspace. If omitted, the default value is -1 (unlimited). | `number` | `-1` | no |
| <a name="input_log_analytics_workspace_name"></a> [log\_analytics\_workspace\_name](#input\_log\_analytics\_workspace\_name) | The name of the Log Analytics Workspace. The name should be between 4 and 63 characters, consisting of letters, digits, and hyphens. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_retention_in_days"></a> [log\_analytics\_workspace\_retention\_in\_days](#input\_log\_analytics\_workspace\_retention\_in\_days) | The number of days to retain data in the Log Analytics Workspace. The Free tier supports only 7 days, while other tiers can range from 30 to 730 days. | `number` | `30` | no |
| <a name="input_log_analytics_workspace_sku"></a> [log\_analytics\_workspace\_sku](#input\_log\_analytics\_workspace\_sku) | The SKU for the Log Analytics Workspace. Options include Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018. The default is PerGB2018. | `string` | `"PerGB2018"` | no |
| <a name="input_region"></a> [region](#input\_region) | The Azure region in which resources will be deployed, for example, 'weu' (West Europe). | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | The location/region where the Application Insights is created. Changing this forces a new resource to be created. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the virtual network. This is an important organizational construct in Azure. | `string` | n/a | yes |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_id"></a> [app\_id](#output\_app\_id) | The App ID associated with this Application Insights component, used for identifying the Application Insights resource. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the Application Insights component. |
| <a name="output_instrumentation_key"></a> [instrumentation\_key](#output\_instrumentation\_key) | The Instrumentation Key associated with this Application Insights component, used for tracking and monitoring telemetry data. |
<!-- END_TF_DOCS -->    