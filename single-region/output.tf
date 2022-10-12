locals {
  single_config = {
    resource_group_name = azurerm_resource_group.resource_group.name
  }
}

output "single_config" {
  value     = jsonencode(local.single_config)
  sensitive = false
}

output "deploy" {
  value = "az spring app deploy --deployment single -n bootiful -s acre -g ${azurerm_resource_group.resource_group.name} --artifact-path"
}

output "logs" {
  value = "az spring app logs -n bootiful -s acre --deployment single -g ${azurerm_resource_group.resource_group.name}"
}