terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "a_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_registry" "acr" {
  name                = "myownacr2718"
  resource_group_name = azurerm_resource_group.a_rg.name
  location            = azurerm_resource_group.a_rg.location
  sku                 = "Basic"
}