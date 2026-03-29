output "cluster_name"{
    value = azurerm_kubernetes_cluster.cluster1.name
}
output "dns_prefix" {
    value=azurerm_kubernetes_cluster.cluster1.dns_prefix
  
}

output "node_pool_name"{
    value = azurerm_kubernetes_cluster_node_pool.E1.name
}

output "node_pool-name" {
    value=azurerm_kubernetes_cluster_node_pool.E2.name
  
}