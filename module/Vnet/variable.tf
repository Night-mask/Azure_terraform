variable "vnet_name"{
    description = "name of the virtual network"
    type = string
}
variable "vnet_loca" {
  description = "location of virtual network"
  type = string
}

variable "address" {
  description = "Address space for the VNet"
  type        = list(string)
}
variable "resource1" {
    description = "name of the resource group"
    type = string
  
}