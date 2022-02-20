provider "azurerm" {
  features {

  }

}

#creating a resource

resource "azurerm_resource_group" "rg" {
  name     = "${var.environment}-rg"
  location = var.location
}

#creating a multiple storage

resource "azurerm_storage_account" "storages" {
  name                     = "${var.environment}storabcxyz000${var.regioncode}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  access_tier              = "HOT"
  account_replication_type = var.skutype
  account_tier             = "Standard"

}
