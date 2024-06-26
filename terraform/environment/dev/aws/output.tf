output "s3_bucket_name" {
  value       = aws_s3_bucket.app_bucket.id
  description = "The name of the S3 bucket created for the application."
}
