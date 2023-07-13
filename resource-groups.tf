resource "azurerm_resource_group" "rg_dev01_eu2" {
  name     = var.dev_rg01_name
  location = "eastus2"
}

resource "azurerm_resource_group" "rg_prod01_eu2" {
  name     = var.prod_rg01_name
  location = "eastus2"
}