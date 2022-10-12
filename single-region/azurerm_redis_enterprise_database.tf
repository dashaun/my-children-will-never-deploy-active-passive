resource "azurerm_redis_enterprise_database" "single" {
  name = "default"

  cluster_id        = azurerm_redis_enterprise_cluster.cluster0.id
  client_protocol   = "Plaintext"
  clustering_policy = "EnterpriseCluster"
  eviction_policy   = "NoEviction"
  port              = 10000

  linked_database_id = [
    "${azurerm_redis_enterprise_cluster.cluster0.id}/databases/default"
  ]

  linked_database_group_nickname = "singleregion"

  module {
    name = "RediSearch"
  }
}