provider "azurerm" {
  version = "=2.0.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-azure-tf"
    storage_account_name = "saaztf"
    container_name       = "terraform-state-azure"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "rg-azure-tf" {
  name     = "rg-azure"
  location = "northcentralus"
}