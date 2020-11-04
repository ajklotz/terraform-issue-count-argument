terraform {
  required_version = "~> 0.13"
}

resource "azurerm_resource_group" "rg" {
  name     = lower(join("-", [var.location, "942kjafi3aife-rg"]))
  location = var.location
}