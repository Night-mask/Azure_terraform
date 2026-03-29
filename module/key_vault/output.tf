output "pass"{
    value = azurerm_key_vault_secret.secret1.value
    sensitive = true
}