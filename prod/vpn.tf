resource "digitalocean_droplet" "vpn-server" {
  image    = "ubuntu-20-04-x64"
  name     = "vpn-server"
  region   = "nyc1"
  monitoring = "true"
  size     = "s-1vcpu-1gb"
  ssh_keys = [
    digitalocean_ssh_key.nick.fingerprint,
  ]
}

resource "digitalocean_volume" "monitoring-data" {
  region                  = "nyc1"
  name                    = "monitoring-data"
  size                    = 2 
  initial_filesystem_type = "ext4"
  description             = "data volume for prometheus monitoring toolset"
}

resource "digitalocean_volume_attachment" "vpn-mount" {
  droplet_id = digitalocean_droplet.vpn-server.id
  volume_id  = digitalocean_volume.monitoring-data.id
}
