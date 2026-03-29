resource_group_name="azure_iac_training_rg"
location = "East US "
v1="virtual_network1"
n1="subnet1"
address_prefixes = "10.0.0.0/24"
nsg1 = "network-secure1"
security = [{
    name = "Rule1"
    priority                    = 100
    direction                   = "Inbound"
    access                      = "Deny"
    protocol                    = "Tcp"
    source_port_range           = "*"
    destination_port_range      = "80"
    source_address_prefix       = "*"
    destination_address_prefix  = "*"

}]

store1 = "blob321"
