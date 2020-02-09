terraform {
  backend "gcs" {
    bucket  = "tf-state-pers"
    # prefix  = "do-palnabarun/state"
    prefix  = "terraform/state"
  }
}
