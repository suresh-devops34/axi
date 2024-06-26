provider "google" {
  credentials = file("<CREDENTIALS-FILE>.json")
  project     = var.project
  region      = var.region
}
