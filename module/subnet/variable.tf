variable "resource_group" {
  description = "name of the resource group"
  type=string
}
variable "vnet_name" {
    description = "virtual network name"
    type = string
  
}
variable "ad1" {
    description = "subnet prefix"
    type = string
}
variable "name_sub" {
    description = "name of subnet prefix"
    type = string
}