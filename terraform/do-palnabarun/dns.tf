resource "digitalocean_domain" "run_naba" {
  name = "naba.run"
}

resource "digitalocean_domain" "xyz_nbrn" {
  name = "nbrn.xyz"
}

# resource "digitalocean_record" "__mx_naba_run" {
#   for_each = toset(var.GOOGLE_MX_RECORDS)

#   domain = digitalocean_domain.run_naba.name
#   name = "@"
#   type = "MX"
#   value = each.value["value"]
#   priority = each.value["priority"]
#   ttl = 3600
# }

resource "digitalocean_record" "run_naba_mx" {
  domain = digitalocean_domain.run_naba.name
  name = "@"
  type = "MX"
  value = "aspmx.l.google.com."
  priority = 1
  ttl = 3600
}

resource "digitalocean_record" "run_naba_mx_alt1" {
  domain = digitalocean_domain.run_naba.name
  name = "@"
  type = "MX"
  value = "alt1.aspmx.l.google.com."
  priority = 5
  ttl = 3600
}

resource "digitalocean_record" "run_naba_mx_alt2" {
  domain = digitalocean_domain.run_naba.name
  name = "@"
  type = "MX"
  value = "alt2.aspmx.l.google.com."
  priority = 5
  ttl = 3600
}

resource "digitalocean_record" "run_naba_mx_alt3" {
  domain = digitalocean_domain.run_naba.name
  name = "@"
  type = "MX"
  value = "alt3.aspmx.l.google.com."
  priority = 10
  ttl = 3600
}

resource "digitalocean_record" "run_naba_mx_alt4" {
  domain = digitalocean_domain.run_naba.name
  name = "@"
  type = "MX"
  value = "alt4.aspmx.l.google.com."
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

resource "digitalocean_record" "s_ns1" {
  domain = digitalocean_domain.xyz_nbrn.name
  name = "s"
  type = "NS"
  value = "ns1.digitalocean.com."
}

resource "digitalocean_record" "s_ns2" {
  domain = digitalocean_domain.xyz_nbrn.name
  name = "s"
  type = "NS"
  value = "ns2.digitalocean.com."
}

resource "digitalocean_record" "s_ns3" {
  domain = digitalocean_domain.xyz_nbrn.name
  name = "s"
  type = "NS"
  value = "ns3.digitalocean.com."
}

resource "digitalocean_domain" "m_nbrn_xyz" {
  name = "m.nbrn.xyz"
}

resource "digitalocean_record" "iris_m_nbrn_xyz" {
  domain = digitalocean_domain.m_nbrn_xyz.name
  name = "iris"
  type = "CNAME"
  value = "iris.m.nabarun.in."
}

resource "digitalocean_record" "jarvis_m_nbrn_xyz" {
  domain = digitalocean_domain.m_nbrn_xyz.name
  name = "jarvis"
  type = "CNAME"
  value = "jarvis.m.nabarun.in."
}

resource "digitalocean_record" "iris" {
  domain = digitalocean_domain.xyz_nbrn.name
  name = "iris"
  type = "CNAME"
  value = "${digitalocean_record.iris_m_nbrn_xyz.fqdn}."
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
  type = "CNAME"
  value = "${digitalocean_record.jarvis_m_nbrn_xyz.fqdn}."
}
