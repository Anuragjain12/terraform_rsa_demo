terraform {
  backend "azure" {}
}

provider "azurerm" {
  version = "=2.20.0"
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
