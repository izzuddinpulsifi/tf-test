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
resource "aws_s3_bucket" "test-izzuddin-tf-foreachtest" {
  for_each = toset(var.bucket_names)
  bucket = each.value

  tags = {
    Name        = each.value
    Environment = "Test-import"
  }  
}