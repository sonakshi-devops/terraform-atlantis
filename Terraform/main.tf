provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket-@10" "example" {
  bucket = "my-atlantis-test-bucket"
}

