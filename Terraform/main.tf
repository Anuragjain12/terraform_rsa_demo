terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.31.1"
    }
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
