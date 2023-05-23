terraform {
  required_version = ">= 1.0.0"
  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.55.0"
    }

  }

  backend "azurerm" {
    resource_group_name  = "storage_account_resource_group"
    storage_account_name = "saesaraiva"
    container_name       = "remotestate"
    key                  = "azure-vnet/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}