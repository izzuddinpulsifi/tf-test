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
resource "aws_s3_bucket" "test-izzuddin-tf-counttest" {
  count = length(var.bucket_names)
  bucket = var.bucket_names[count.index]

  tags = {
    Name        = var.bucket_names[count.index]
    Environment = "Test-import"
  }  
}