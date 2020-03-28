###########################
# Common vars
###########################
variable "envirioment" {
  description = "Var used for backend container name key"
}

variable "tag_envirioment" {
  description = "Tag describing the environment"
}
variable "resource_owner" {
  description = "Tag describing the resource owner"
}


###########################
# Resource groups vars
###########################

variable "rg_location" {
  description = "Location of resource group"
  default = "West Europe"
}
variable "rg_name" {
  description = "Name of resource group"
}

###########################
# Application Insights Service vars
###########################

variable "application_insights_name" {
  description = "Name of Azure application insights component"
}


variable "application_insights_type" {
  description = "Type of Azure application insights component"
}
