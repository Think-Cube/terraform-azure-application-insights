resource "azurerm_log_analytics_workspace" "main" {
  name                = "${var.environment}-${var.log_analytics_workspace_name}-${var.region}-log"
  location            = "${azurem_resource_group.rg.location}"
  resource_group_name = "${data.azurerm_resource_group.rg.name}"
  sku                 = "${var.log_analytics_workspace_sku}"
  retention_in_days   = "${var.log_analytics_workspace_retention_in_days}"

    tags = "${var.default_tags}"
}
