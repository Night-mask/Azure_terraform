resource "azurerm_storage_account" "storage" {
    resource_group_name = var.resource3
    name=var.store 
    location = var.loca1
    account_replication_type = "LRS"
    account_tier = "Standard"
  
}


resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_id  = azurerm_storage_account.storage.id
  container_access_type = "private"
}
