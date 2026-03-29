resource "azurerm_kubernetes_cluster" "cluster1" {
    resource_group_name=var.resource2
    name=var.name
    location = var.loca2
    dns_prefix = var.dns_prefix
    
    default_node_pool {
      name="System"
      vm_size = "Standard_DS3_v2"
      node_count = 1
      vnet_subnet_id = var.subnet_id
    }

     identity {
    type = "SystemAssigned"
  }
  

}

resource "azurerm_kubernetes_cluster_node_pool" "E1" {
  name=var.node1_name
  kubernetes_cluster_id = azurerm_kubernetes_cluster.cluster1.id
  vm_size = "Standard_DS3_v2"
  vnet_subnet_id = var.subnet_id1
  node_count = 3

  
}

resource "azurerm_kubernetes_cluster_node_pool" "E2"{
  name = var.node2_name
  kubernetes_cluster_id = azurerm_kubernetes_cluster.cluster1.id
  vnet_subnet_id = var.subnet_id2
  vm_size = "Standard_DS3_v2"
  node_count = 2

}
