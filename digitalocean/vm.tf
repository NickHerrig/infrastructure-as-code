variable "do_token" {}
variable "ssh_key" {}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_ssh_key" "nick-ssh" {
  name       = "nick"
  public_key = var.ssh_key
}

resource "digitalocean_droplet" "test-vm" {
  image    = "ubuntu-20-04-x64"
  name     = "test-vm"
  region   = "nyc1"
  size     = "s-1vcpu-1gb"
  ssh_keys = [digitalocean_ssh_key.nick-ssh.fingerprint]
}
