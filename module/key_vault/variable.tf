variable "resource1" {
  description = "name of the resource group"
  type = string
}
variable "name_vault" {
    description = "name of the vault"
    type = string
  
}
variable "loca1" {
    description = "location of resource group"
    type = string
  
}
variable "tenant_id" {
    description = "id of the user"
    type = string
  
}
#variable "secret_name" {
    #description = "name of the user"
   # type = string}

#variable "secret_pas" {
    #description = "password"
    #type = string
    #sensitive = true}