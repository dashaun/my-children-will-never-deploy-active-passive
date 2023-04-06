resource "azurerm_spring_cloud_active_deployment" "location1" {
  spring_cloud_app_id = azurerm_spring_cloud_app.location1.id
  deployment_name     = azurerm_spring_cloud_build_deployment.location1.name
}

resource "azurerm_spring_cloud_active_deployment" "location2" {
  spring_cloud_app_id = azurerm_spring_cloud_app.location2.id
  deployment_name     = azurerm_spring_cloud_build_deployment.location2.name
}