terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  # Optional: Uncomment this once you have a storage account for state
  # backend "azurerm" {
  #   resource_group_name  = "tf-state-rg"
  #   storage_account_name = "tfstateshared"
  #   container_name       = "tfstate"
  #   key                  = "dev.terraform.tfstate"
  # }
}

provider "azurerm" {
  features {}
}
