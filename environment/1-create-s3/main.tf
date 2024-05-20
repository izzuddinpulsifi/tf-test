terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.47.0"
    }
  }

  backend "s3" {
    bucket = "test-izzuddin-tf-backend"
    key    = "ap-southeast-1/terraform.tfstate"
    region = "ap-southeast-1"
  }

  required_version = ">= 1.2.0"
}

resource "aws_s3_bucket" "test-izzuddin-tf-createbucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = "Test"
  }  
}