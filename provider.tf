terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }

  }
   backend "azurerm" {
    resource_group_name  = "uma_rg"
    storage_account_name = "umastg123"
    container_name       = "tfstae"
    key                  = "prod.terraform.tfstate"
  }
  
}

provider "azurerm" {
  features {}
  subscription_id = "3e9a397e-5e2e-44d1-8ab3-a4a873a27200"
}