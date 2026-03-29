variable "resource2" {
    description = "name of the resource group"
    type=string
  
}

variable "name" {
    description = "name of aks"
    type = string
}

variable "loca2" {
    description = "location of aks"
    type = string
  
}

variable "dns_prefix" {
    description = "dns-value"
    type = string
  
}

variable "subnet_id" {
    description = "subnet id for the aks"
    type = string
  
}

variable "node1_name" {
    description = "name of the node pool"
    type = string
  
}

variable "subnet_id1" {
  description = "name of the subnet1"
  type = string
  
}
variable "node2_name" {
    description = "name of node 2"
    type = string
  
}
variable "subnet_id2" {
  description = "subnet of node 2"
}