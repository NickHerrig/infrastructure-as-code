resource "digitalocean_ssh_key" "nick" {
  name       = "nick"
  public_key = file("${path.module}/ssh_keys/nick.pub")
}
