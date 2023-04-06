resource "azurerm_application_insights" "default" {
  name                = var.identifier
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  application_type    = "java"
  sampling_percentage = 100
}