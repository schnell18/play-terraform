terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.20.2"
    }
  }
}

provider "linode" {
  token = var.linode_api_token
}

variable "linode_api_token" {
  description = "Token to access linode via API"
  # TODO: add you token here
  default = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

resource "linode_instance" "inst" {}

