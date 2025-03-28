variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "Amazon Machine Image ID"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}

variable "my_new_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
