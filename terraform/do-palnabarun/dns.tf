resource "digitalocean_domain" "run_naba" {
  name = "naba.run"
}

resource "digitalocean_domain" "xyz_nbrn" {
  name = "nbrn.xyz"
}

resource "digitalocean_record" "run_naba_mx" {
  domain = digitalocean_domain.run_naba.name
  name = "@"
  type = "MX"
  value = "ASPMX.L.GOOGLE.COM."
  priority = 1
  ttl = 3600
}

resource "digitalocean_record" "run_naba_mx_alt1" {
  domain = digitalocean_domain.run_naba.name
  name = "@"
  type = "MX"
  value = "ALT1.ASPMX.L.GOOGLE.COM."
  priority = 5
  ttl = 3600
}

resource "digitalocean_record" "run_naba_mx_alt2" {
  domain = digitalocean_domain.run_naba.name
  name = "@"
  type = "MX"
  value = "ALT2.ASPMX.L.GOOGLE.COM."
  priority = 5
  ttl = 3600
}

resource "digitalocean_record" "run_naba_mx_alt3" {
  domain = digitalocean_domain.run_naba.name
  name = "@"
  type = "MX"
  value = "ALT3.ASPMX.L.GOOGLE.COM."
  priority = 10
  ttl = 3600
}

resource "digitalocean_record" "run_naba_mx_alt4" {
  domain = digitalocean_domain.run_naba.name
  name = "@"
  type = "MX"
  value = "ALT4.ASPMX.L.GOOGLE.COM."
  priority = 10
  ttl = 3600
}

resource "digitalocean_record" "run_naba_mx_verfication" {
  domain = digitalocean_domain.run_naba.name
  name = "@"
  type = "MX"
  value = "6g2v7g2b4k3wvnlvoozj4syt6qswc5vo7ylaealldsie6yizvrha.mx-verification.google.com."
  priority = 15
  ttl = 3600
}

resource "digitalocean_record" "m_ns1" {
  domain = digitalocean_domain.xyz_nbrn.name
  name = "m"
  type = "NS"
  value = "ns1.digitalocean.com."
}

resource "digitalocean_record" "m_ns2" {
  domain = digitalocean_domain.xyz_nbrn.name
  name = "m"
  type = "NS"
  value = "ns2.digitalocean.com."
}

resource "digitalocean_record" "m_ns3" {
  domain = digitalocean_domain.xyz_nbrn.name
  name = "m"
  type = "NS"
  value = "ns3.digitalocean.com."
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
