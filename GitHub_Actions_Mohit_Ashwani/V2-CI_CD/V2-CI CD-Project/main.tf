terraform {
  required_version = ">= 0.12.26"
}

provider "aws" {
  access_key = "AKIA4DN5TV67YT3EE52A"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "mohit-bkt-22-august"
  acl    = "private"

  versioning {
    enabled = true
  }
}