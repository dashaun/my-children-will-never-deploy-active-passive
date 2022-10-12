resource "azurerm_resource_group" "resource_group" {
  name     = "single-region"
  location = "northeurope"
  tags     = merge(var.tags, { owner = data.azurerm_client_config.current.client_id })
}