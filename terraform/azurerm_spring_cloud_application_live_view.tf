resource "azurerm_spring_cloud_application_live_view" "location1" {
  name                    = "default"
  spring_cloud_service_id = azurerm_spring_cloud_service.location1.id
}

resource "azurerm_spring_cloud_application_live_view" "location2" {
  name                    = "default"
  spring_cloud_service_id = azurerm_spring_cloud_service.location2.id
}