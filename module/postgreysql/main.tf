resource "azurerm_postgresql_flexible_server" "post1" {
    resource_group_name = var.resource1
    location = var.loca1
    name=var.n3
    administrator_login = var.admin1
    version = "14"
    sku_name = "B_Standard_B1ms"
    storage_mb = 32768
    administrator_password = var.admin_pass
    
}