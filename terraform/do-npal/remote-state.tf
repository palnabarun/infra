terraform {
  backend "gcs" {
    bucket  = "tf-state-pers"
    prefix  = "do-npal"
  }
}
