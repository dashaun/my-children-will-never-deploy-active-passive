terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.61.0"
    }
  }
}

provider "azurerm" {
  environment = var.cloud_name
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}