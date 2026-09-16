variable "name" {
  description = "The name of the Application Insights resource. Changing this forces a new resource to be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Application Insights component."
  type        = string
}

variable "location" {
  description = "The location/region where the Application Insights is created. Changing this forces a new resource to be created."
  type        = string
}

variable "application_type" {
  description = "Specifies the type of Application Insights to create. Valid values are ios, java, MobileCenter, Node.JS, other, phone, store, and web. Changing this forces a new resource to be created."
  type        = string
  default     = "web"
}

variable "daily_data_cap_in_gb" {
  description = "Specifies the Application Insights component daily data volume cap in GB."
  type        = number
  default     = null
}

variable "daily_data_cap_notifications_disabled" {
  description = "Specifies if a notification email will be sent when the daily data volume cap is met."
  type        = bool
  default     = null
}

variable "retention_in_days" {
  description = "Specifies the retention period in days. Possible values are 30, 60, 90, 120, 180, 270, 365, 550 or 730."
  type        = number
  default     = null
}

variable "sampling_percentage" {
  description = "Specifies the percentage of the data produced by the monitored application that is sampled for Application Insights telemetry. Accepted values are 0 to 100."
  type        = number
  default     = null
}

variable "disable_ip_masking" {
  description = "By default the real client IP is masked as 0.0.0.0 in the logs. Use this argument to disable masking and log the real client IP."
  type        = bool
  default     = false
}

variable "workspace_id" {
  description = "Specifies the id of a log analytics workspace resource. If provided the module will not create a new Log Analytics Workspace."
  type        = string
  default     = null
}

variable "local_authentication_disabled" {
  description = "Disable Non-Azure AD based Auth."
  type        = bool
  default     = false
}

variable "internet_ingestion_enabled" {
  description = "Should the Application Insights component support ingestion over the Public Internet?"
  type        = bool
  default     = true
}

variable "internet_query_enabled" {
  description = "Should the Application Insights component support querying over the Public Internet?"
  type        = bool
  default     = true
}

variable "force_customer_storage_for_profiler" {
  description = "Should the Application Insights component force users to create their own storage account for profiling?"
  type        = bool
  default     = false
}

# Log Analytics Workspace (created when workspace_id is null)
variable "log_analytics_workspace_name" {
  description = "The name of the Log Analytics Workspace to create (used when workspace_id is not provided). Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "log_analytics_workspace_sku" {
  description = "The SKU for the Log Analytics Workspace. Options include Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018."
  type        = string
  default     = "PerGB2018"
}

variable "log_analytics_workspace_retention_in_days" {
  description = "The number of days to retain data in the Log Analytics Workspace."
  type        = number
  default     = 30
}

variable "log_analytics_workspace_daily_quota_gb" {
  description = "The daily data ingestion quota in GB for the Log Analytics Workspace. -1 means unlimited."
  type        = number
  default     = -1
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
