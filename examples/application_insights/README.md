# Azure Application Insights Terraform Module

This Terraform module provisions an Azure Application Insights instance and a Log Analytics Workspace, integrated with the specified settings.

## Usage

### Example

```hcl
provider "azurerm" {
features {}
}

module "application_insight" {
  source  = "Think-Cube/application-insight/azure"
  version = "1.0.0"
  application_insights_name = "dd5ce8a0"
  log_analytics_workspace_name = "bf308ab897c3"
  resource_group_name = "weu-test-rg"
  resource_group_location = "West Europe"
  application_insights_type = "web"
  environment = "dev"
  log_analytics_workspace_retention_in_days = "30"
  log_analytics_workspace_sku = "PerGB2018"
  region = "weu"

  default_tags = {
      Administrator     = "John Doe"
      Department        = "IT"
      CostCentre        = "CC123"
      ContactPerson     = "Jane Smith"
      ManagedByTerraform = "True"
}
}
```

### Variables

* `application_insights_name`: Name of the Azure Application Insights instance.
* `log_analytics_workspace_name`: Name of the Log Analytics Workspace.
* `resource_group_name`: Name of the Azure resource group.
* `resource_group_location`: Location of the Azure resource group.
* `application_insights_type`: Type of Application Insights (e.g., web).
* `environment`: Environment for the resources (e.g., dev, prod).
* `log_analytics_workspace_retention_in_days`: Retention period for Log Analytics data (in days).
* `log_analytics_workspace_sku`: SKU for the Log Analytics Workspace.
* `region`: Azure region for the resources.
* `default_tags`: Default tags to be applied to all resources.

### Outputs

* `application_insights_id`: The ID of the created Application Insights instance.
* `log_analytics_workspace_id`: The ID of the created Log Analytics Workspace.
* `log_analytics_workspace_primary_shared_key`: Primary shared key of the created Log Analytics Workspace.
* `log_analytics_workspace_secondary_shared_key`: Secondary shared key of the created Log Analytics Workspace.
* `log_analytics_workspace_customer_id`: Customer ID of the created Log Analytics Workspace.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).

## Contribution

Feel free to contribute by opening issues or pull requests. Your feedback and improvements are highly appreciated!
