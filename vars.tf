###########################
# Common vars
###########################
variable "envirioment" {
  description = "Var used for backend container name key"
  type = "string"
}

variable "tag_envirioment" {
  description = "Tag describing the environment"
  type = "string"
}
variable "resource_owner" {
  description = "Tag describing the resource owner"
  type = "string"
}


###########################
# Resource groups vars
###########################

variable "rg_location" {
  description = "Location of resource group"
  default = "West Europe"
  type = "string"
}
variable "rg_name" {
  description = "Name of resource group"
  type = "string"
}

###########################
# Application Insights Service vars
###########################

variable "application_insights_name" {
  description = "Name of Azure application insights component"
  type = "string"
}


variable "application_insights_type" {
  description = "Type of Azure application insights component"
  type = "string"
}
