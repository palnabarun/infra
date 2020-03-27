resource "digitalocean_domain" "run_naba" {
  name = "naba.run"
}

resource "digitalocean_domain" "xyz_nbrn" {
  name = "nbrn.xyz"
}

resource "digitalocean_record" "iris" {
  domain = digitalocean_domain.xyz_nbrn.name
  name = "iris"
  type = "A"
  value = var.IRIS_FIP
}

resource "digitalocean_record" "iris_vpn" {
  domain = digitalocean_domain.xyz_nbrn.name
  name = "vpn.iris"
  type = "CNAME"
  value = "${digitalocean_record.iris.fqdn}."
}

resource "digitalocean_record" "vpn" {
  domain = digitalocean_domain.xyz_nbrn.name
  name = "vpn"
  type = "CNAME"
  value = "${digitalocean_record.iris.fqdn}."
}

resource "digitalocean_record" "jarvis" {
  domain = digitalocean_domain.xyz_nbrn.name
  name = "jarvis"
  type = "A"
  value = var.JARVIS_FIP
}
