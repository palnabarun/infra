resource "digitalocean_droplet" "alpha" {
  image  = "ubuntu-20-04-x64"
  name   = "alpha"
  region = "blr1"
  size   = "s-1vcpu-1gb"

  monitoring = true
  ipv6 = true
  ssh_keys = [digitalocean_ssh_key.nabarun_pal.id]
  tags = ["alpha", "blr"]
}

resource "digitalocean_floating_ip" "alpha_fip" {
    droplet_id = digitalocean_droplet.alpha.id
    region = digitalocean_droplet.alpha.region
}
