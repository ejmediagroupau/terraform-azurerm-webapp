# terraform-azurerm-webapp
Terraform module for provision Azure Service plan, App service (web app) and Application Insight inside an existing Resource Group.


## Usage

```
terraform {
  required_version = "~> 1.1"
  required_providers {
    azurerm = {
      version = "~> 3.23"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-app" {
  name     = "RG_MyAPP_Demo"
  location = "West Europe"
}

module "webapp" {
  source              = "<source>"
  service_plan_name   = "spmyapp2"
  app_name            = "myappdemobook2"
  location            = "West Europe"
  resource_group_name = module.resourcegroup.resource_group_name
}

output "webapp_url" {
  value = module.webapp.webapp_url
}

```