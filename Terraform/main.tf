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
  subscription_id = "edafcb5d-a934-4403-b146-138315cc7e47"
}

resource "azurerm_resource_group" "demo_rg" {
  name     = "example"
  location = "West Europe"
  tags = {
    env    = "demo"
    source = "terraform"
  }
}

output "id" {
value = data.azurerm_resource_group.demo_rg.id
}
