resource "azurerm_resource_group" "rg_prod_eu2" {
  name     = "rg-prod-eu2"
  location = "eastus2"
}

resource "azurerm_resource_group" "rg_dev_eu2" {
  name     = "rg-dev-eu2"
  location = "eastus2"
}