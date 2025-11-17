
provider "aws" {
  region = "us-east-1"
}

# KMS Key
resource "aws_kms_key" "s3_key" {
  description         = "KMS key for S3 bucket encryption"
  enable_key_rotation = true
}

# S3 Bucket
resource "aws_s3_bucket" "prod_bucket" {
  bucket = "rahul-tf-test"  # Globally unique

  tags = {
    Name        = "ProdS3Bucket"
    Environment = "Prod"
  }

  force_destroy = false
}

# Block public access
resource "aws_s3_bucket_public_access_block" "prod_bucket_block" {
  bucket = aws_s3_bucket.prod_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Versioning
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.prod_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

# Server-Side Encryption (KMS)
resource "aws_s3_bucket_server_side_encryption_configuration" "sse_kms" {
  bucket = aws_s3_bucket.prod_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = aws_kms_key.s3_key.arn
    }
  }
}


# Optional: Enable Logging (to another bucket)
# Make sure to create logging bucket first
# resource "aws_s3_bucket_logging" "logging" {
#   bucket = aws_s3_bucket.prod_bucket.id
#   target_bucket = aws_s3_bucket.logging_bucket.id
#   target_prefix = "logs/"
# }

