variable "aws_region" {
  description = "AWS region for the S3 bucket."
  type        = string
  default     = "us-west-2"
}

variable "domain_name" {
  description = "Website domain served by CloudFront."
  type        = string
  default     = "jresmith.com"
}

variable "route53_zone_name" {
  description = "Route 53 hosted zone name."
  type        = string
  default     = "jresmith.com"
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name for the site."
  type        = string
  default     = "jresmith-com-site"
}

variable "acm_certificate_arn" {
  description = "ACM certificate ARN in us-west-2 covering www.jresmith.com."
  type        = string
}

variable "price_class" {
  description = "CloudFront price class."
  type        = string
  default     = "PriceClass_100"
}