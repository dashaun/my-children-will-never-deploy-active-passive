resource "azurerm_resource_group" "default" {
  name     = random_string.resource_group_name.result
  location = var.location1
}

resource "azurerm_resource_group" "acre1" {
  name     = random_string.rg_acre1.result
  location = var.location1
}

resource "azurerm_resource_group" "acre2" {
  name     = random_string.rg_acre2.result
  location = var.location2
}