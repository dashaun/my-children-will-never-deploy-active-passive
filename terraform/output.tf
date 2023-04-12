output "resource_group_name" {
  value     = azurerm_resource_group.default.name
  sensitive = false
}

output "logs1" {
  value = "az spring app logs -n bootiful -s ${azurerm_spring_cloud_service.location1.name} -g ${azurerm_resource_group.acre1.name} --lines 1000"
}

output "logs2" {
  value = "az spring app logs -n bootiful -s ${azurerm_spring_cloud_service.location2.name} -g ${azurerm_resource_group.acre2.name} --lines 1000"
}

output "list_apps1" {
  value = "az spring app list --output table -g ${azurerm_resource_group.acre1.name} -s ${azurerm_spring_cloud_service.location1.name}"
}

output "list_apps2" {
  value = "az spring app list --output table -g ${azurerm_resource_group.acre2.name} -s ${azurerm_spring_cloud_service.location2.name}"
}

output "build_deploy1" {
  value = "az spring app deploy -g ${azurerm_resource_group.acre1.name} -s ${azurerm_spring_cloud_service.location1.name} -n ${azurerm_spring_cloud_app.location1.name} --source-path ../ --build-env BP_JVM_VERSION=17"
}

output "build_deploy2" {
  value = "az spring app deploy -g ${azurerm_resource_group.acre2.name} -s ${azurerm_spring_cloud_service.location2.name} -n ${azurerm_spring_cloud_app.location2.name} --source-path ../ --build-env BP_JVM_VERSION=17"
}