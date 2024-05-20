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
resource "aws_s3_bucket" "test-izzuddin-tf-foreachtestwithoutput" {
  for_each = toset(var.bucket_names)
  bucket = each.value

  tags = {
    Name        = each.value
    Environment = "Test-import"
  }  
}
output "bucket_names" {
  value = [
    for bucket in var.bucket_names:
    aws_s3_bucket.test-izzuddin-tf-foreachtestwithoutput[bucket].bucket_domain_name
  ]
}