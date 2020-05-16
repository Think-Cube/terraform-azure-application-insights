terraform {
    backend "azurem" {
        resource_group_name = "weu-common-rg"
        storage_account_name = "tfstated"

        container_name = "tfstate"
        key = "${var.envirioment}-application-insights-terraform.tfstate"
    }
}