resource "digitalocean_droplet" "prow" {
  image  = "ubuntu-18-04-x64"
  name   = "prow"
  region = "blr1"
  size   = "s-1vcpu-1gb"

  monitoring = true
  ipv6 = true
  ssh_keys = [digitalocean_ssh_key.nabarun_pal.id]
  tags = ["prow", "blr"]
}

resource "digitalocean_floating_ip" "prow_fip" {
    droplet_id = digitalocean_droplet.prow.id
    region = digitalocean_droplet.prow.region
}
