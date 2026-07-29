output "bucket_name" {
  description = "S3 bucket name."
  value       = aws_s3_bucket.site.bucket
}

output "cloudfront_distribution_id" {
  description = "CloudFront distribution ID"
  value       = aws_cloudfront_distribution.site.id
}

output "cloudfront_domain_name" {
  description = "CloudFront distribution domain name."
  value       = aws_cloudfront_distribution.site.domain_name
}
output "website_url" {
  description = "Website URL."
  value       = "https://${var.domain_name}"
}