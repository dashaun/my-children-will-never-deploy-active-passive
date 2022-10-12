resource "azurerm_spring_cloud_active_deployment" "multi" {
  for_each            = toset(local.regions)
  spring_cloud_app_id = azurerm_spring_cloud_app.multi[each.value].id
  deployment_name     = azurerm_spring_cloud_java_deployment.multi[each.value].name
}