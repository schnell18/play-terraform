# Introduction

Explore managing cloud service using [terraform][1].

## Catelog

| sub-directory      | comment                                             |
| ------------------ | ----------------------------------------------------|
| azure              | explore cloud deployment automation w/ azure        |
| linode             | explore cloud deployment automation w/ linode       |
| aws                | explore cloud deployment automation w/ aws          |


## Installation

You need install terraform as well as the CLIs of clound vendors.
To install terraform on MacOS X using homebrew:

    brew tap hashicorp/tap
    brew install hashicorp/tap/terraform

    touch ~/.zshrc
    terraform -install-autocomplete

## Deploy an Azure resource group

Create a __main.tf__ file with following content:

    # Configure the Azure provider
    terraform {
      required_providers {
        azurerm = {
          source  = "hashicorp/azurerm"
          version = "~> 2.65"
        }
      }

      required_version = ">= 0.14.9"
    }

    provider "azurerm" {
      features {}
    }

    resource "azurerm_resource_group" "rg" {
      name     = "myTFResourceGroup"
      location = "eastus"
    }

### format and validate

Run __terraform fmt__ to make consistent .tf file format.
Run __terraform valdate__ to validate .tf file.

### preview change

Use __terraform plan__ to preview effect of change.

### apply change

Use __terraform apply__ to apply change.

After successful application, terraform stores IDs and properties into .tfstate file.
This file should be kept secret and never check into VCS.

### view state

Use __terraform show__ or __terraform state list__ to view state.

## Reference

Other useful resources:

- [Terraform for DevOps Beginners + Labs][2]
- [Terragrunt][3]

[1]: https://terraform.io/
[2]: https://youtu.be/YcJ9IeukJL8
[3]: https://terragrunt.gruntwork.io/
