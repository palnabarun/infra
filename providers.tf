provider "google" {
  project     = "experiments-220510"
  # region      = "us-central1"
  # zone        = "us-central1-c"
}

provider "digitalocean" {
  token = "${var.DO_TOKEN}"
}
