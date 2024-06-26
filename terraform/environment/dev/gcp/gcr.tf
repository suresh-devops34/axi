resource "google_container_registry" "app_registry" {
  name = "${var.project_name}-registry"
}
