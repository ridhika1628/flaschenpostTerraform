terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.11.0"
    }
  }
}

provider "azurerm" {
  features {}
}

#---------------------------------------------------------
#         Resource Group Creation through variables
#---------------------------------------------------------
resource "azurerm_resource_group" "flashchenpost_rg" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    department = "SRE"
  }
}


#---------------------------------------------------------
#         Create storage account through variables
#---------------------------------------------------------
resource "azurerm_storage_account" "flashchenpost_storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.repl_type
  access_tier              = var.access_tier
  tags = {
    department = "SRE"
  }
}


#-------------------------------------------------------------
#         Create storage account container through variables
#-------------------------------------------------------------
resource "azurerm_storage_container" "flashchenpost_container" {
  name                  = "sre"
  storage_account_name  = azurerm_storage_account.flashchenpost_storage_account.name
  container_access_type = "private"
}
