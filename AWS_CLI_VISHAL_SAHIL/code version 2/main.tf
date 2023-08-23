terraform {
  required_version = ">= 0.12.26"
}

provider "aws" {
  access_key = "AKIASMJSK6OY2YJ5H65A"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "bkt-vishal-final"
  acl    = "private"

  versioning {
    enabled = true
  }
}