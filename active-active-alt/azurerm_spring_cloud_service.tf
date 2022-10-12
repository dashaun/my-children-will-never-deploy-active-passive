resource "azurerm_spring_cloud_service" "multi" {
  for_each            = toset(local.regions)
  name                = each.value
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = each.value
  sku_name            = "S0"
  zone_redundant      = true

  config_server_git_setting {
    uri   = "https://github.com/dashaun/dev.dashaun.config"
    label = "main"
  }
}