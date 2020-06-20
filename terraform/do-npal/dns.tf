resource "digitalocean_domain" "m_nabarun_in" {
  name = "m.nabarun.in"
}

resource "digitalocean_record" "prow_m_nabarun_in" {
  domain = digitalocean_domain.m_nabarun_in.name
  name = "prow"
  type = "A"
  value = digitalocean_floating_ip.prow_fip.ip_address
}
