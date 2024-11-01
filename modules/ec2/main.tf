terraform {
  backend "s3" {}
}


provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name        = "${var.project}-${var.environment}-instance"
    Environment = var.environment
    Project     = var.project
  }
}