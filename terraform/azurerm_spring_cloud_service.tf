resource "azurerm_spring_cloud_service" "location1" {
  name                     = var.location1
  resource_group_name      = azurerm_resource_group.default.name
  location                 = var.location1
  service_registry_enabled = true
  sku_name                 = "E0"
  zone_redundant           = true
  build_agent_pool_size    = "S1"

  trace {
    connection_string = azurerm_application_insights.default.connection_string
    sample_rate       = 5.0
  }
}

resource "azurerm_spring_cloud_service" "location2" {
  name                     = var.location2
  resource_group_name      = azurerm_resource_group.default.name
  location                 = var.location2
  service_registry_enabled = true
  sku_name                 = "E0"
  zone_redundant           = true
  build_agent_pool_size    = "S1"

  trace {
    connection_string = azurerm_application_insights.default.connection_string
    sample_rate       = 5.0
  }
}