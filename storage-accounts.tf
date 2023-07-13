resource "azurerm_storage_account" "dev-storage" {
  name                     = var.dev_storage_name
  resource_group_name      = azurerm_resource_group.rg_dev_eu2.name
  location                 = azurerm_resource_group.rg_dev_eu2.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  allow_nested_items_to_be_public = false
  
  tags = {
    environment = "dev"
  }
}