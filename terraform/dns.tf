resource "digitalocean_record" "alpha" {
  domain = "nbrn.xyz"
  type   = "A"
  name   = "alpha"
  value  = "${google_compute_instance.alpha.network_interface.0.access_config.0.nat_ip}"
}
