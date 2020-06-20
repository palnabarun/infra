resource "digitalocean_domain" "m_nabarun_in" {
  name = "m.nabarun.in"
}

resource "digitalocean_record" "alpha_m_nabarun_in" {
  domain = digitalocean_domain.m_nabarun_in.name
  name = "alpha"
  type = "A"
  value = digitalocean_floating_ip.alpha_fip.ip_address
}
