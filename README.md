<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.4 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.94.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.94.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_application_insights.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.94.0/docs/resources/application_insights) | resource |
| [azurerm_log_analytics_workspace.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.94.0/docs/resources/log_analytics_workspace) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.94.0/docs/data-sources/client_config) | data source |
| [azurerm_resource_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/3.94.0/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_insights_name"></a> [application\_insights\_name](#input\_application\_insights\_name) | Specifies the name of the Application Insights component. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_application_insights_type"></a> [application\_insights\_type](#input\_application\_insights\_type) | Specifies the type of Application Insights to create. Valid values are ios for iOS, java for Java web, MobileCenter for App Center, nodejs for Node.js, and other for General. | `string` | `"web"` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | A mapping of tags to assign to the resource. | `map(any)` | <pre>{<br>  "ManagedByTerraform": "True"<br>}</pre> | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Variable that defines the name of the environment. | `string` | `"dev"` | no |
| <a name="input_log_analytics_workspace_name"></a> [log\_analytics\_workspace\_name](#input\_log\_analytics\_workspace\_name) | Specifies the name of the Log Analytics Workspace. Workspace name should include 4-63 letters, digits or '-'. The '-' shouldn't be the first or the last symbol. Changing this forces a new resource to be created | `string` | n/a | yes |
| <a name="input_log_analytics_workspace_retention_in_days"></a> [log\_analytics\_workspace\_retention\_in\_days](#input\_log\_analytics\_workspace\_retention\_in\_days) | The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730. | `number` | `"30"` | no |
| <a name="input_log_analytics_workspace_sku"></a> [log\_analytics\_workspace\_sku](#input\_log\_analytics\_workspace\_sku) | Specifies the SKU of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018 (new SKU as of 2018-04-03). Defaults to PerGB2018. | `string` | `"PerGB2018"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region in which resources are deployed. | `string` | `"weu"` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | `"West Europe"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | TThe name of the resource group in which to create the Application Insights component. Changing this forces a new resource to be created. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_application_insights_id"></a> [application\_insights\_id](#output\_application\_insights\_id) | The ID of the created Application Insights instance. |
| <a name="output_log_analytics_workspace_customer_id"></a> [log\_analytics\_workspace\_customer\_id](#output\_log\_analytics\_workspace\_customer\_id) | Customer ID of the created Log Analytics Workspace. |
| <a name="output_log_analytics_workspace_id"></a> [log\_analytics\_workspace\_id](#output\_log\_analytics\_workspace\_id) | The ID of the created Log Analytics Workspace. |
| <a name="output_log_analytics_workspace_primary_shared_key"></a> [log\_analytics\_workspace\_primary\_shared\_key](#output\_log\_analytics\_workspace\_primary\_shared\_key) | Primary shared key of the created Log Analytics Workspace. |
| <a name="output_log_analytics_workspace_secondary_shared_key"></a> [log\_analytics\_workspace\_secondary\_shared\_key](#output\_log\_analytics\_workspace\_secondary\_shared\_key) | Secondary shared key of the created Log Analytics Workspace. |
<!-- END_TF_DOCS -->