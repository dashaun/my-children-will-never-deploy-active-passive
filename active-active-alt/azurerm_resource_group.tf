resource "azurerm_resource_group" "resource_group" {
  name     = "active-active-alt"
  location = local.regions[0]
  tags     = merge(var.tags, { owner = data.azurerm_client_config.current.client_id })
}