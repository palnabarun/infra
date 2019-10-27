resource "google_compute_instance" "alpha" {
  name         = "alpha"
  machine_type = "n1-standard-1"
  zone         = "asia-southeast1-a"

  tags = ["alpha"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  // Local SSD disk
  scratch_disk {
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-full", "logging-write", "monitoring-write"]
  }
}
