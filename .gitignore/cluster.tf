resource "google_container_cluster" "gkube-cluster" {
  name               = "${var.appName}"
  location           = var.gcpZone
  initial_node_count = 2

  node_config {
    preemptible  = true
    machine_type = "n1-standard-1"
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}
output "clusterName" {
  value = google_container_cluster.gkube-cluster.name
}
