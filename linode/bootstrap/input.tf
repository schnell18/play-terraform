variable "linode_api_token" {
  description = "Token to access linode via API"
  #TODO: replace you token here
  default = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

variable "instance_type" {
  description = "Type linode instance"
  default = "g6-nanode-1"
}

variable "region" {
  description = "Location of linode datacenter"
  default = "us-west"
}

variable "ssh_key" {
  description = "Trusted ssh public key"
  # TODO: add you public key
  default = "XXXXXXXX"
}
