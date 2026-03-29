terraform {
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = "~> 4.0"
    }
  }
  
}


module "resource_group" {
    source = "./module/resource_group"
    resource_name=var.resource_group_name
    l1=var.location
  
}

module "Vnet" {
  source = "./module/Vnet"
  vnet_name = var.v1
  vnet_loca = var.location
  resource1 = var.resource_group_name
  address= ["10.0.0.0/16"]
}

module "subnet"{
  source = "./module/subnet"
  name_sub=var.n1
  resource_group=var.resource_group_name
  vnet_name=module.Vnet.vnet_name
  ad1=var.address_prefixes
}
module "storage" {
  source = "./module/storage"
  resource3=var.resource_group_name
  loca1=var.location
  store=var.store1
}

module "nsg" {
  source = "./module/nsg"
  resource2=var.resource_group_name
  nsg_location=var.location
  nsg_name=var.nsg1
  security_rules=var.security
  
}

#module "key_vault"{
  #source = "C:/Users/Elangovan/Documents/terraform/module/key_vault"
 # resource1=var.resource_group_name
  #name_vault=var.name_vault
 #loca1=var.location
  #tenant_id=var.tenant_id
  #secret_name="db-admin"
  #secret_pas=var.secret_pass}

#module "postgreysql"{
  #source = "C:/Users/Elangovan/Documents/terraform/module/postgreysql"
  #resource1=var.resource_group_name
 # loca1=var.location
  #n3=var.name_post
 # admin1="db-admin"
 # admin_pass=module.key_vault.pass}

#module "aks" {
  #name=var.name_aks
  #resource2=var.resource_group_name
  #loca2=var.location
  #dns_prefix="aksdemo"
  #subnet_id=module.subnet.subnets_id
  #node1_name="node1"
  #subnet_id1=module.subnet.subnets_id
  #node2_name="node2"
  #subnet_id2=module.subnet.subnets_id}



