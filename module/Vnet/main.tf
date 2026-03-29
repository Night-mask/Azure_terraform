resource "azurerm_virtual_network" "vnet"{
    name=var.vnet_name
    location=var.vnet_loca
    address_space =var.address
    resource_group_name=var.resource1
}