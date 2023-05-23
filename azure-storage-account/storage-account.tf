resource "azurerm_resource_group" "resource_group" {
  name     = "storage_account_resource_group"
  location = var.location

  tags = local.commom_tags
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "storageaccount01esaraiva"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.commom_tags
}

resource "azurerm_storage_container" "storage_container" {
  name                 = "imagens"
  storage_account_name = azurerm_storage_account.storage_account.name
}
