resource "digitalocean_domain" "run_naba" {
  name = "naba.run"
}

resource "digitalocean_domain" "xyz_nbrn" {
  name = "nbrn.xyz"
}

resource "digitalocean_domain" "nabarun_top" {
  name = "nabarun.top"
}

resource "digitalocean_domain" "nabarun_download" {
  name = "nabarun.download"
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

resource "digitalocean_record" "naba_run" {
  domain = digitalocean_domain.run_naba.name
  name = "@"
  type = "A"
  value = var.ALPHA_FIP
}

resource "digitalocean_record" "_wildcard_naba_run" {
  domain = digitalocean_domain.run_naba.name
  name = "*"
  type = "CNAME"
  value = "naba.run."
}
