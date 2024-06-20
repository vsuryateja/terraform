terraform {
  backend "azurerm" {
    resource_group_name  = "Prod-RG"
    storage_account_name = "jaibalayya"
    container_name       = "datacontainer"
    key                  = "terraform.tfstate"
  }
}