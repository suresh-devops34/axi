resource "google_container_cluster" "primary_cluster" {
  name     = "${var.project_name}-cluster"
  location = var.region

  remove_default_node_pool = true
  initial_node_count = 1
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "${var.project_name}-node-pool"
  location   = var.region
  cluster    = google_container_cluster.primary_cluster.name

  node_count = 3

  node_config {
    preemptible  = false
    machine_type = "e2-medium"
  }
}
