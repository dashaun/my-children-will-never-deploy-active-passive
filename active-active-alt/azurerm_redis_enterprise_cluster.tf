resource "azurerm_redis_enterprise_cluster" "multi" {
  for_each            = toset(local.regions)
  name                = each.value
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = each.value

  sku_name = var.acre_sku
}