
resource "digitalocean_droplet" "iris" {
  image  = "ubuntu-18-04-x64"
  name   = "iris"
  region = "sgp1"
  size   = "s-1vcpu-1gb"

  monitoring = true
  ipv6 = true
  ssh_keys = [digitalocean_ssh_key.nabarun_pal.id]
  tags = ["iris", "vpn", "sgp"]
}

resource "digitalocean_floating_ip" "iris_fip" {
    droplet_id = digitalocean_droplet.iris.id
    region = digitalocean_droplet.iris.region
}
