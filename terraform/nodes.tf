resource "google_compute_instance" "alpha" {
  name         = "alpha"
  machine_type = "n1-standard-1"
  zone         = "asia-southeast1-a"

  tags = ["alpha", "http-server", "https-server"]

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

resource "google_compute_instance" "apps" {
  name         = "apps"
  machine_type = "n1-standard-1"
  zone         = "asia-south1-a"

  tags = ["apps"]

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
