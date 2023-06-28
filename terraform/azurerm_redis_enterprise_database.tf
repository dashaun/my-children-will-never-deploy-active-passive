resource "azurerm_redis_enterprise_database" "location1" {
  name = "default"

  cluster_id        = azurerm_redis_enterprise_cluster.location1.id
  client_protocol   = "Plaintext"
  clustering_policy = "EnterpriseCluster"
  eviction_policy   = "NoEviction"
  port              = 10000

  linked_database_id = [
    "${azurerm_redis_enterprise_cluster.location1.id}/databases/default",
    "${azurerm_redis_enterprise_cluster.location2.id}/databases/default"
  ]

  linked_database_group_nickname = var.acre_group_nickname

}

resource "azurerm_redis_enterprise_database" "location2" {
  name              = "default"
  cluster_id        = azurerm_redis_enterprise_cluster.location2.id
  client_protocol   = "Plaintext"
  clustering_policy = "EnterpriseCluster"
  eviction_policy   = "NoEviction"
  port              = 10000

  linked_database_id = [
    "${azurerm_redis_enterprise_cluster.location1.id}/databases/default",
    "${azurerm_redis_enterprise_cluster.location2.id}/databases/default"
  ]

  linked_database_group_nickname = var.acre_group_nickname
}