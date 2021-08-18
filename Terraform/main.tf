terraform {
  required_providers {
    azurerm = "2.52.0"
  }
}

provider "azurerm" {
  features {}
  }

resource "azurerm_resource_group" "demo_rg" {
  name     = "example"
  location = "West Europe"
  tags = {
    env    = "demo"
    source = "terraform"
  }
}
