resource "azurerm_spring_cloud_connection" "location1" {
  name               = "acre"
  spring_cloud_id    = azurerm_spring_cloud_build_deployment.location1.id
  target_resource_id = azurerm_redis_enterprise_database.location1.id
  authentication {
    type = "secret"
  }
  client_type = "springBoot"
}

resource "azurerm_spring_cloud_connection" "location2" {
  name               = "acre"
  spring_cloud_id    = azurerm_spring_cloud_build_deployment.location2.id
  target_resource_id = azurerm_redis_enterprise_database.location2.id
  authentication {
    type = "secret"
  }
  client_type = "springBoot"
}