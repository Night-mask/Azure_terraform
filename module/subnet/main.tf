resource "azurerm_subnet" "subnet" {
    name=var.name_sub
    resource_group_name=var.resource_group
    virtual_network_name=var.vnet_name
    address_prefixes = [var.ad1]

  
}