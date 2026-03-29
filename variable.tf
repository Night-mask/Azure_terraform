variable "resource_group_name"{
    description = "its the name of the  resourcegroup"
    type = string
}

variable "location" {
  description = "location of the server"
  type = string
}

variable "v1" {
    description = "vnet_name"
    type = string
  
}

variable "n1" {
  description = "name of subnet"
  type = string
  
}
variable "address_prefixes" {
  description = "address prefix for subnet"
  type = string
}

variable "nsg1" {
  description = "name of nsg"
  type = string
  
}

variable "security" {
  description = "rules for nsg"
  type = list(object({
    name = string
    priority                    = number
    direction                   = string
    access                      = string
    protocol                    = string
    source_port_range           = string
    destination_port_range      = string
    source_address_prefix       = string
    destination_address_prefix  = string

  
  }))
  
}

#variable "name_vault" {
  #description = "name of the vault"
  #type=string}

#variable "tenant_id" {
  #description = "tenant id"
  #type = string}
  
#variable "secret_pas" {
  #description = "password for database"
  #sensitive = true
  #type = string}

#variable "name_post" {
 # description = "name of postgreysql"
  #type = string}

#variable "name_aks" {
  #description = "name of cluster"
  #type = string}

variable "store1" {
  description = "name of storage"
  type = string
  
}