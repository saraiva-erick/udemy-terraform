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
    key                  = "azure-vm/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

data "terraform_remote_state" "vnet" {
  backend = "azurerm"
  config = {
    resource_group_name  = "storage_account_resource_group"
    storage_account_name = "saesaraiva"
    container_name       = "remotestate"
    key                  = "azure-vnet/terraform.tfstate"
  }
}

resource "azurerm_resource_group" "resource_group" {
  name     = "infnet-mysql"
  location = var.location

  tags = local.commom_tags
}