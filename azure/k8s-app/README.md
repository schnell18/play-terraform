# Introduction

Explore managing cloud service using terraform.

## Installation

MacOS X using homebrew:

    brew tap hashicorp/tap
    brew install hashicorp/tap/terraform


Setup Tab completion for zsh:

    touch ~/.zshrc
    terraform -install-autocomplete

### login your clound vendor

Before you can use terraform, you have to login your cloud
vendor. Depending on the terraform provider for your cloud
vendor, you may need generate a token and configure the
provider like:

    terraform {
      required_providers {
        linode = {
          source = "linode/linode"
          version = "1.20.2"
        }
      }
    }

    provider "linode" {
      # TODO: add you token here
      token =  "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
    }

Or you just login, the terraform provider will be aware of
you login state. Azure falls into this category, to login
Azure, you run:

    az login

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
