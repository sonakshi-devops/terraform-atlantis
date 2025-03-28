provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket-@123" "example" {
  bucket = "my-atlantis-test-bucket"
}

