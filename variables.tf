###########################
# Common vars
###########################
variable "environment" {
  description = "Variable that defines the name of the environment."
  type        = string
  default     = "dev"
}
variable "default_tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default = {
    "ManagedByTerraform" = "True"
  }
}
variable "region" {
  description = "Region in which resources are deployed."
  type        = string
  default     = "weu"
}
###########################
# Resource groups vars
###########################
variable "resource_group_location" {
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  default     = "West Europe"
  type        = string
}
variable "resource_group_name" {
  description = "TThe name of the resource group in which to create the Application Insights component. Changing this forces a new resource to be created."
  type        = string
}

###########################
# Application Insights Service vars
###########################
variable "application_insights_name" {
  description = "Specifies the name of the Application Insights component. Changing this forces a new resource to be created."
  type        = string
}
variable "application_insights_type" {
  description = "Specifies the type of Application Insights to create. Valid values are ios for iOS, java for Java web, MobileCenter for App Center, nodejs for Node.js, and other for General."
  type        = string
  default     = "web"

  validation {
    condition     = can(regex("^(ios|java|MobileCenter|Node.JS|other|phone|store|web)$", var.application_insights_type))
    error_message = "Invalid value for application_insights_type. Valid values are ios, java, MobileCenter, nodejs, or other."
  }
}
variable "log_analytics_workspace_name" {
  description = "Specifies the name of the Log Analytics Workspace. Workspace name should include 4-63 letters, digits or '-'. The '-' shouldn't be the first or the last symbol. Changing this forces a new resource to be created"
  type        = string
}
variable "log_analytics_workspace_sku" {
  description = "Specifies the SKU of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018 (new SKU as of 2018-04-03). Defaults to PerGB2018."
  type        = string
  default     = "PerGB2018"

  validation {
    condition     = can(regex("^(Free|PerNode|Premium|Standard|Standalone|Unlimited|CapacityReservation|PerGB2018)$", var.log_analytics_workspace_sku))
    error_message = "Invalid value for log_analytics_workspace_retention_in_days. Valid values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, PerGB2018."
  }
}

variable "log_analytics_workspace_retention_in_days" {
  description = "The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730."
  type        = number
  default     = "30"

  validation {
    condition     = can(regex("^(30|60|90|120|180|270|365|550|730)$", var.log_analytics_workspace_retention_in_days))
    error_message = "Invalid value for log_analytics_workspace_retention_in_days. Valid values are 30, 60, 90, 120, 180, 270, 365, 550, 730."
  }
}