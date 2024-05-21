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
resource "aws_s3_bucket" "test-izzuddin-tf-foreachtestwithoutputwithcondition" {
  for_each = toset(var.bucket_names)
  bucket = each.value
  object_lock_enabled = "${var.environment == "lock" ? "true" : "false"}"

  tags = {
    Name        = each.value
    Environment = "izzuddin-Test"
  }
}
output "bucket_names" {
  value = [
    for bucket in var.bucket_names:
    aws_s3_bucket.test-izzuddin-tf-foreachtestwithoutputwithcondition[bucket].object_lock_enabled
  ]
}