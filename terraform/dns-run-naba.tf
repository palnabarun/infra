resource "digitalocean_domain" "run-naba" {
  name = "naba.run"
}

resource "digitalocean_record" "apps-bank" {
  domain = "naba.run"
  type   = "CNAME"
  name   = "bank.apps"
  value  = "apps.nbrn.xyz."
}
