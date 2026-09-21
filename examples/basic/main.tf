module "application_insights" {
  source = "../.."

  name                = "appi-dev-example"
  resource_group_name = "rg-example"
  location            = "West Europe"
  application_type    = "web"

  log_analytics_workspace_name = "law-dev-example"

  tags = {
    environment = "dev"
    managed_by  = "terraform"
  }
}