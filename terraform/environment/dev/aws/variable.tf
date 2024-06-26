variable "region" {
  description = "The AWS region where resources will be created."
  default     = "us-east-1"
}

variable "project_name" {
  description = "The name of the project, used for resource naming."
  type        = string
  default     = "SuperService"
}
