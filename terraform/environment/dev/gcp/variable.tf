variable "project" {
  description = "The GCP project ID."
}

variable "region" {
  description = "The region where resources will be created."
  default     = "us-central1"
}

variable "project_name" {
  description = "The name of the project, used for resource naming."
  default     = "SuperService"
}
