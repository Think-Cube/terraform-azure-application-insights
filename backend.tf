terraform {
    backend "azurem" {
        resource_group_name = "${azurem_resource_group.rg.container_name}"
        storage_account_name = "tfstated"

        container_name = "tfstate"
        key = "${var.envirioment}-application-insights-terraform.tfstate"
    }
}