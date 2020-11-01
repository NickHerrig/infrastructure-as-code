provider "linode" {
    token = var.linode_token
}

resource "linode_instance" "nicks_vm" {
    image = "linode/ubuntu20.04"
    authorized_keys = [var.ssh_key]
    region = "us-central"
}

variable "linode_token" {}
variable "ssh_key" {}
