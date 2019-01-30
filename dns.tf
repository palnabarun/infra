resource "digitalocean_record" "bom" {
  domain = "nbrn.xyz"
  type   = "A"
  name   = "bom"
  value  = "${google_compute_instance.bom.network_interface.0.access_config.0.nat_ip}"
}
