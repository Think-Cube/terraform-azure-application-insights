## How to use

```
provider "azurerm" {
features {}
}

module "app-insights" {
  source  = "spy86/app-insights/azure"
  version = "1.0.4"
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
      Administrator = "Someone"
      Department = "IT"
      CostCentre = "ABC123"
      ContactPerson = "Someone@example.com"
      ManagedByTerraform = "True"
}
}