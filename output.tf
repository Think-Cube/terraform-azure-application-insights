output "id" {
  description = "ID of the Application Insights component."  
  value = "${azurerm_application_insights.main.id}"
}
output "instrumentation_key" {
    description = "App ID associated with this Application Insights component."
  value = "${azurerm_application_insights.main.instrumentation_key}"
}

output "app_id" {
  description = "Instrumentation Key for this Application Insights component."  
  value = "${azurerm_application_insights.main.app_id}"
}