resource "aws_s3_bucket" "test-izzuddin-tf-createbucket-from-module-count" {
  for_each = toset(var.bucketname)
  bucket = each.value

  tags = {
    Name        = each.value
    Environment = "TestFromModule"
  }  
}