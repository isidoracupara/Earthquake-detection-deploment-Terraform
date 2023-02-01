# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

# configure azure provider
provider "azurerm" {
  features {}
}

# create resource groups
resource "azurerm_resource_group" "irg" {
  name     = "IsidoraBoumanResourceGroup"
  location = "West Europe"
  tags = var.becode_tags
}

# create storage account
resource "azurerm_storage_account" "bouman_storage_account" {
    name = "isidoraBouman"

# Use the resource group name and location from the resource group
# this allows terraform to wait for the resource group to be creatd before creating 
    resource_group_name = azurerm_resource_group.couman_resource_group.name
    location = azurerm_resource_group.bouman_resource_group.location
    account_tier = "Standard"
    account_replication_type = "GRS"
    tags = var.beocde_tags
}