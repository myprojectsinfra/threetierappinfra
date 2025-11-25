
terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.32.0"
    }
  }

}

provider "azurerm" {
  features {}
  subscription_id = "02fc6674-9e4d-4764-8702-0c4550e06df7"

}
