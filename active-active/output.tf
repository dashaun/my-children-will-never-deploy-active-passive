output "endpoints" {
  value = { for p in sort(toset(local.regions)) : p => [azurerm_spring_cloud_app.multi[p].url] }
}