resource "azurerm_spring_cloud_java_deployment" "single" {
  name                = "single"
  spring_cloud_app_id = azurerm_spring_cloud_app.single.id
  instance_count      = 1

  quota {
    cpu    = "1"
    memory = "4Gi"
  }

  runtime_version = "Java_17"

  environment_variables = {
    "SPRING_REDIS_HOST" : azurerm_redis_enterprise_cluster.cluster0.hostname
    "SPRING_REDIS_PORT" : azurerm_redis_enterprise_database.single.port
    "SPRING_REDIS_PASSWORD" : azurerm_redis_enterprise_database.single.primary_access_key
    "MY_REGION" : azurerm_resource_group.resource_group.location
  }
}