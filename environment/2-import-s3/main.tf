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
# import {
#   to = aws_s3_bucket.test-izzuddin-tf-import
#   id = var.bucket_name_import
# }
resource "aws_s3_bucket" "test-izzuddin-tf-import" {
  bucket = var.bucket_name_import

  tags = {
    Name        = var.bucket_name_import
    Environment = "Test-import"
  }  
}

/**
NOTE : 
Bucket is create via console. In order to import it 
uncomment line 17-20 and terraform apply will add in the bucket
to its lock file. Then once done comment the import block
then try run terraform plan to see no changes and terraform
destroy to delete it via terraform
*/