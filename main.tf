terraform {
  required_version = "~> 0.13"
}

provider "azurerm" {
  version         = "~>2.31.1"
  features {}
}

module "primaryRegion" {
  source    = "./multi-region"
  location  = var.primaryLocation
}
module "secondaryRegion" {
  source    = "./multi-region"
  count     = var.deploymentEnvironment == "PROD" || var.deploymentEnvironment == "STG" ? 1 : 0
  location  = var.secondaryLocation
}