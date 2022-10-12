resource "azurerm_spring_cloud_service" "single" {
  name                = "acre"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  sku_name            = "S0"
  zone_redundant      = true

  config_server_git_setting {
    uri   = "https://github.com/dashaun/dev.dashaun.config"
    label = "main"
  }
}