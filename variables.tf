variable "environment" {
  description = "Variable used for backend container name key, typically used to distinguish between different environments such as dev, prod, etc."
  type        = string
  default     = "dev"
}

variable "default_tags" {
  description = "A mapping of tags to assign to the resource. These tags can help categorize and organize the resource within Azure."
  type        = map(any)
}

variable "region" {
  description = "The Azure region in which resources will be deployed, for example, 'weu' (West Europe)."
  type        = string
  default     = "weu"
}

variable "resource_group_location" {
  description = "The location/region where the Application Insights is created. Changing this forces a new resource to be created."
  type        = string
  default     = "West Europe"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network. This is an important organizational construct in Azure."
  type        = string
}

variable "application_insights_name" {
  description = "The name of the Application Insights resource. Changing this forces a new resource to be created."
  type        = string
}

variable "application_insights_type" {
  description = "The type of Application Insights to create. Valid values are ios, java, MobileCenter, Node.JS, other, phone, store, and web (for ASP.NET). Changing this forces a new resource to be created."
  type        = string
  default     = "web"
}

variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics Workspace. The name should be between 4 and 63 characters, consisting of letters, digits, and hyphens. Changing this forces a new resource to be created."
  type        = string
}

variable "log_analytics_workspace_sku" {
  description = "The SKU for the Log Analytics Workspace. Options include Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018. The default is PerGB2018."
  type        = string
  default     = "PerGB2018"
}

variable "log_analytics_workspace_retention_in_days" {
  description = "The number of days to retain data in the Log Analytics Workspace. The Free tier supports only 7 days, while other tiers can range from 30 to 730 days."
  type        = number
  default     = 30
}

variable "log_analytics_workspace_daily_quota_gb" {
  description = "The daily data ingestion quota in GB for the Log Analytics Workspace. If omitted, the default value is -1 (unlimited)."
  type        = number
  default     = -1
}

variable "application_insights_daily_data_cap_in_gb" {
  description = "The daily data volume cap in GB for the Application Insights component. The default is 100 GB."
  type        = number
  default     = 100
}
