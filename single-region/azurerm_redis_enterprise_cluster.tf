resource "azurerm_redis_enterprise_cluster" "cluster0" {
  name                = "cluster0"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location

  sku_name = var.acre_sku
}