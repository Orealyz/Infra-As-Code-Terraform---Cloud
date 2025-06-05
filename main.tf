
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.3.0"

  backend "local" {}
}

provider "azurerm" {
  features {}
}

module "networking" {
  source = "./modules/networking"
  environment = var.environment
}

module "acr" {
  source = "./modules/acr"
  environment = var.environment
}

module "mysql" {
  source = "./modules/mysql"
  environment = var.environment
}

module "webapp" {
  source = "./modules/webapp"
  environment = var.environment
  acr_login_server = module.acr.login_server
  mysql_fqdn = module.mysql.mysql_fqdn
}
