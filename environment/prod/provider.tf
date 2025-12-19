terraform {
    required_version = "1.14.1"
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "4.50.0"
        }
    }
}

provider "azurerm" {
    features {}
    subscription_id = "f5462578-ed0d-4878-93ea-2462f9a3dac4"
}

# required_version = ">= 1.9.0"