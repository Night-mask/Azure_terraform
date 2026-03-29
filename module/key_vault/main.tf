resource "azurerm_key_vault" "lock" {
    resource_group_name = var.resource1
    name = var.name_vault
    location = var.loca1
    tenant_id = var.tenant_id
    sku_name = "standard"
  
}

#resource "azurerm_key_vault_secret" "secret1" {
   # name = var.secret_name
   # value = var.secret_pas
   # key_vault_id = azurerm_key_vault.lock.id}