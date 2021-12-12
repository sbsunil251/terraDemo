terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}
provider "azurerm" {  
  features {}
  subscription_id   = "31b625db-7920-423e-88d0-df5b6419e701"
  tenant_id         = "a976c852-d327-4927-be05-6650129d208c"
  client_id         = "e5c0266f-4f9a-44b6-bd5f-c203447ef992"
  client_secret     = "<service_principal_password>"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-hello-azure-tf"
    storage_account_name = "sahelloazuretf123"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "rg-hello-azure" {
  name     = "rg-hello-azure"
  location = "northcentralus"
}