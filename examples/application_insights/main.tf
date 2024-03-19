provider "azurerm" {
features {}
}

module "application_insight" {
  source  = "Think-Cube/application-insight/azure"
  version = "1.0.0"
  application_insights_name = "dd5ce8a0"
  log_analytics_workspace_name = "bf308ab897c3"
  resource_group_name = "dev-test-weyu-rg"
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
