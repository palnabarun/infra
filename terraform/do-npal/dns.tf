resource "digitalocean_domain" "m_nabarun_in" {
  name = "m.nabarun.in"
}

resource "digitalocean_record" "iris_m_nabarun_in" {
  domain = digitalocean_domain.m_nabarun_in.name
  name = "iris"
  type = "A"
  value = digitalocean_floating_ip.iris_fip.ip_address
}
