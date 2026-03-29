variable "resource2"{
    description = "name of the resource group"
    type = string
}

variable "nsg_location" {
    description = "location of network security group"
    type=string
  
}

variable "nsg_name" {
    description = "name of network security group"
    type = string
  
}

variable "security_rules" {
    description = "security rules for the nsg"
    type = list(object({
    name=string
    priority                    = number
    direction                   = string
    access                      = string
    protocol                    = string
    source_port_range           = string
    destination_port_range      = string
    source_address_prefix       = string
    destination_address_prefix  = string

    }
    ))
  
}