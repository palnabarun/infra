resource "google_container_cluster" "experiments" {
  name               = "experiments"
  zone               = "asia-south1-a"
  initial_node_count = 3

  master_auth {
    username = "${var.GKE_MASTER_USERNAME}"
    password = "${var.GKE_MASTER_PASSWORD}"
  }

  node_config {
    preemptible  = true
    disk_size_gb = "100"
    disk_type    = "pd-standard"

    machine_type = "n1-standard-1"

    oauth_scopes = [
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/compute",
    ]
  }

  addons_config {
    http_load_balancing {
      disabled = false
    }
  }

}

output "client_certificate" {
  value = "${google_container_cluster.experiments.master_auth.0.client_certificate}"
}

output "client_key" {
  value = "${google_container_cluster.experiments.master_auth.0.client_key}"
}

output "cluster_ca_certificate" {
  value = "${google_container_cluster.experiments.master_auth.0.cluster_ca_certificate}"
}

output "master_username" {
  value = "${google_container_cluster.experiments.master_auth.0.cluster_ca_certificate}"
}

output "master_password" {
  value = "${google_container_cluster.experiments.master_auth.0.cluster_ca_certificate}"
}

output "host" {
  value = "${google_container_cluster.experiments.endpoint}"
}
