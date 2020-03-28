resource "azurerm_application_insights" "main" {
  name                = "${var.application_insights_name}"
  location            = "${azurem_resource_group.rg.location}"
  resource_group_name = "${azurem_resource_group.rg.name}"
  application_type    = "${var.application_insights_type}"

    tags = {
      resource-owner = "${var.resource_owner}"
      environment = "${var.envirioment}"
  }
}