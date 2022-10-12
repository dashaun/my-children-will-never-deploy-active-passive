resource "azurerm_spring_cloud_active_deployment" "single" {
  spring_cloud_app_id = azurerm_spring_cloud_app.single.id
  deployment_name     = azurerm_spring_cloud_java_deployment.single.name
}