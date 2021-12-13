provider "azurerm" {
  version = "=2.89.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tf-git-azure"
    storage_account_name = "satfgitazure"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "rg-tf-git123" {
  name     = "rg-tf-git"
  location = "centralindia"
}