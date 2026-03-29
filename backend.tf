terraform {
  backend "azurerm" {
    resource_group_name = "azure_iac_training_rg"
    storage_account_name = "blob321"
    container_name = "tfstate"
    key = "terraform.tfstate"
  }
}
