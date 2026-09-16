# Example: Terraform Module — Azure Application Insights

Provisions an `azurerm_application_insights` resource with configurable retention, sampling, and workspace integration.

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