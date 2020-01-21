resource "digitalocean_record" "alpha" {
  domain = "nbrn.xyz"
  type   = "A"
  name   = "alpha"
  value  = "${google_compute_instance.alpha.network_interface.0.access_config.0.nat_ip}"
}

resource "digitalocean_record" "apps" {
  domain = "nbrn.xyz"
  type   = "A"
  name   = "apps"
  value  = "${google_compute_instance.apps.network_interface.0.access_config.0.nat_ip}"
}

resource "digitalocean_record" "dc-lb" {
  domain = "nbrn.xyz"
  type   = "A"
  name   = "dc-lb"
  value  = "35.200.215.211"
}

resource "digitalocean_record" "dc-root" {
  domain = "nbrn.xyz"
  type   = "CNAME"
  name   = "dc"
  value  = "dc-lb.nbrn.xyz."
}

resource "digitalocean_record" "dc-wildcard" {
  domain = "nbrn.xyz"
  type   = "CNAME"
  name   = "*.dc"
  value  = "dc-lb.nbrn.xyz."
}
