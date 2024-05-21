resource "aws_s3_bucket" "test-izzuddin-tf-createbucket-from-module" {
  bucket = var.bucketname

  tags = {
    Name        = var.bucketname
    Environment = "TestFromModule"
  }  
}