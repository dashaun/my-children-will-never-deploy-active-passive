resource "azurerm_spring_cloud_configuration_service" "location1" {
  name                    = "default"
  spring_cloud_service_id = azurerm_spring_cloud_service.location1.id
  repository {
    name                     = var.identifier
    label                    = "main"
    patterns                 = ["application"]
    uri                      = "https://github.com/dashaun/dev.dashaun.config"
    strict_host_key_checking = true
  }
}

resource "azurerm_spring_cloud_configuration_service" "location2" {
  name                    = "default"
  spring_cloud_service_id = azurerm_spring_cloud_service.location2.id
  repository {
    name                     = var.identifier
    label                    = "main"
    patterns                 = ["application"]
    uri                      = "https://github.com/dashaun/dev.dashaun.config"
    strict_host_key_checking = true
  }
}