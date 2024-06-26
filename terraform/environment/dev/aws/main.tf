resource "aws_s3_bucket" "b" {
  bucket = "${var.project_name}-bucket"
  

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket" "app_bucket" {
  bucket = "${var.project_name}-${var.region}-data"
  

  tags = {
    Name        = "Application Bucket"
    Environment = "dev"
  }
}
