provider "azurem" {}

data "azurem_client_config" "current" {}

resource "azurem_resource_group" "rg" {
  location = "${var.rg_location}"
  name = "${var.rg_name}"
}
