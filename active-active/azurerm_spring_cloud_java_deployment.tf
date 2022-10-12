resource "azurerm_spring_cloud_java_deployment" "multi" {
  for_each            = toset(local.regions)
  name                = each.value
  spring_cloud_app_id = azurerm_spring_cloud_app.multi[each.value].id
  instance_count      = 1

  quota {
    cpu    = "1"
    memory = "4Gi"
  }

  runtime_version = "Java_17"

  environment_variables = {
    "SPRING_REDIS_HOST" : azurerm_redis_enterprise_cluster.multi[each.value].hostname
    "SPRING_REDIS_PORT" : azurerm_redis_enterprise_database.multi[each.value].port
#    "SPRING_REDIS_PASSWORD" : azurerm_redis_enterprise_database.multi[each.value].primary_access_key
    "MY_REGION" : each.value
  }
}