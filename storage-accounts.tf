resource "azurerm_storage_account" "dev-storage01" {
  name                     = var.dev_stg01_name
  resource_group_name      = azurerm_resource_group.rg_dev01_eu2.name
  location                 = azurerm_resource_group.rg_dev01_eu2.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  access_tier = "Cool"
  
  tags = {
    environment = "development"
  }
}

resource "azurerm_storage_container" "dev-storage01-container01" {
  name                  = "backup"
  storage_account_name  = azurerm_storage_account.dev-storage01.name
  container_access_type = "private"
}

resource "azurerm_storage_account" "prod-storage01" {
  name                     = var.prod_stg01_name
  resource_group_name      = azurerm_resource_group.rg_prod01_eu2.name
  location                 = azurerm_resource_group.rg_prod01_eu2.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
  tags = {
    environment = "production"
  }
}

resource "azurerm_storage_container" "prod-storage01-container01" {
  name                  = "backup"
  storage_account_name  = azurerm_storage_account.prod-storage01.name
  container_access_type = "private"
}
