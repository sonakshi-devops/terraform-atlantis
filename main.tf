provider "aws" {
  region = var.aws_region  # Using the region variable
}

resource "aws_instance" "example" {
  ami           = var.ami_id               # Correctly referencing the ami_id variable
  instance_type = var.instance_type        # Correctly referencing the instance_type variable

  tags = {
    Name = "Atlantis-Terraform-Instance"
  }
  }
