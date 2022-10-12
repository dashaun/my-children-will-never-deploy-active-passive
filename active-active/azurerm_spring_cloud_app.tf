resource "azurerm_spring_cloud_app" "multi" {
  for_each            = toset(local.regions)
  name                = each.value
  resource_group_name = azurerm_resource_group.resource_group.name
  service_name        = azurerm_spring_cloud_service.multi[each.value].name
  is_public           = true
  https_only          = true

  identity {
    type = "SystemAssigned"
  }
}