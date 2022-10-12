resource "azurerm_spring_cloud_app" "single" {
  name                = "bootiful"
  resource_group_name = azurerm_resource_group.resource_group.name
  service_name        = azurerm_spring_cloud_service.single.name
  is_public           = true
  https_only          = true

  identity {
    type = "SystemAssigned"
  }
}