# Example: Basic — Azure Application Insights

Provisions an Azure Application Insights workspace for application monitoring. Minimal example using required inputs only.

## Usage

```hcl
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
```