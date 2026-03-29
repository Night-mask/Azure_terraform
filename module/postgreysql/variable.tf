variable "resource1" {
    description = "name of resource group"
    type = string
  
}
variable "n3" {
  description = "name of the server"
  type = string
}

variable "admin1" {
    description = "name of the administrator"
    type = string
  
} 

variable "loca1" {
    description = "name of the location"
    type = string
  
}
variable "admin_pass" {
    description = "passoword for database "
    type = string
    sensitive = true
  
}