# Configure your outputs
output "endpoint" {
    value ="${aws_s3_bucket.Bucket.website_endpoint}"
}