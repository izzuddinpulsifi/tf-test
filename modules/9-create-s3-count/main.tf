resource "aws_s3_bucket" "test-izzuddin-tf-createbucket-from-module-count" {
  count = length(var.bucketname)
  bucket = var.bucketname[count.index]

  tags = {
    Name        = var.bucketname[count.index]
    Environment = "TestFromModule"
  }  
}