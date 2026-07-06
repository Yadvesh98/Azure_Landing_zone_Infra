terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rgbackend"
    storage_account_name = "stgbackendyy"
    container_name       = "backendcontainer"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "9066053f-33e0-42c0-b836-7939deb5d608"
}
