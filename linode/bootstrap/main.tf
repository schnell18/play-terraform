terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "1.20.2"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.1.0"
    }
  }
}

provider "linode" {
  token = var.linode_api_token
}

resource "random_password" "root_pass" {
  length           = 16
  special          = true
  lower            = true
  upper            = true
  number           = true
  min_lower        = 4
  min_numeric      = 2
  min_special      = 2
  min_upper        = 4
  override_special = "^_%@"
}

resource "linode_instance" "inst" {
  label = "worm-hole"
  image = "linode/debian11"
  region = var.region
  type = var.instance_type
  # authorized_keys = [file("~/.ssh/id_rsa.pub")]
  authorized_keys = [var.ssh_key]
  root_pass = random_password.root_pass.result
}

