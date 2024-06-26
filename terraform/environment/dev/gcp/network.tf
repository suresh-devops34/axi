resource "google_compute_network" "vpc_network" {
  name                    = "${var.project_name}-vpc"
  auto_create_subnetworks = true
}
