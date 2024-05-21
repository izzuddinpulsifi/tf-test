resource "aws_s3_bucket" "test-izzuddin-tf-createbucket-from-module-foreach" {
  for_each = toset(var.bucketname)
  bucket = each.value
  object_lock_enabled = "${var.environment == "lock" ? "true" : "false"}"

  tags = {
    Name        = each.value
    Environment = "TestFromModule"
  }  
}