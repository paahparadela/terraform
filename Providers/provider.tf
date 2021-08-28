terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIATZAVRY3U6S7DLQRS"
  secret_key = "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"
}

resource "aws_instance" "foo" {
  ami           = "ami-0c2b8ca1dad447f8a" # us-east-1
  instance_type = "t2.micro"
  tags = {
      Name = "EC2-Terraform"
  }
}

output "instance_arn" {
  value = aws_instance.foo.arn
}