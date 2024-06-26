# Create an S3 bucket for storing application logs
resource "aws_s3_bucket" "app_logs" {
  bucket = "${var.project_name}-logs-${var.region}"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    id      = "log"
    enabled = true

    transition {
      days          = 30
      storage_class = "STANDARD_IA"  # Infrequent Access
    }

    expiration {
      days = 90
    }
  }

  tags = {
    Name        = "${var.project_name}-logs"
    Environment = "dev"
  }
}

# Create an S3 bucket for application data uploads
resource "aws_s3_bucket" "app_data" {
  bucket = "${var.project_name}-data-${var.region}"
 
}
# Output the names of the created S3 buckets
output "logs_bucket_name" {
  value = aws_s3_bucket.app_logs.bucket
  description = "The name of the S3 bucket used for logs."
}

output "data_bucket_name" {
  value = aws_s3_bucket.app_data.bucket
  description = "The name of the S3 bucket used for storing application data."
}
