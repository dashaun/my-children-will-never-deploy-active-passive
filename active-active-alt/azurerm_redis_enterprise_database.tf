resource "azurerm_redis_enterprise_database" "multi" {
  name              = "default"
  for_each          = toset(local.regions)
  cluster_id        = azurerm_redis_enterprise_cluster.multi[each.value].id
  client_protocol   = "Plaintext"
  clustering_policy = "EnterpriseCluster"
  eviction_policy   = "NoEviction"
  port              = 10000

  linked_database_id = [{ for p in toset(local.regions) : p =>
    "${azurerm_redis_enterprise_cluster.multi[p].id}/databases/default"
   }]

  linked_database_group_nickname = "geogroupalt"

  depends_on = [azurerm_redis_enterprise_cluster.multi]

}