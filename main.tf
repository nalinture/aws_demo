# =========================================
# File: main.tf
# Simple EC2 Instance Example
# =========================================

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# AWS Provider
provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

# Create EC2 Instance
resource "aws_instance" "my_ec2" {

  # Amazon Linux 2023 AMI (ap-south-1)
  ami = "ami-0f58b397bc5c1f2e8"

  instance_type = "t2.micro"

  tags = {
    Name = "Beginner-EC2"
  }
}

# Output Public IP
output "ec2_public_ip" {
  value = aws_instance.my_ec2.public_ip
}
