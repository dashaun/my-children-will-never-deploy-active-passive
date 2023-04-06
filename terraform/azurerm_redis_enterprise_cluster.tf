resource "azurerm_redis_enterprise_cluster" "location1" {
  name                = random_string.rg_acre1.result
  resource_group_name = azurerm_resource_group.acre1.name
  location            = var.location1
  sku_name            = var.acre_sku
}

resource "azurerm_redis_enterprise_cluster" "location2" {
  name                = random_string.rg_acre2.result
  resource_group_name = azurerm_resource_group.acre2.name
  location            = var.location2
  sku_name            = var.acre_sku
}