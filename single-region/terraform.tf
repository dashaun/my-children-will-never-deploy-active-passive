terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
    azurerm = {
      source = "hashicorp/azurerm"
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