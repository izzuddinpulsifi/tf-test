output "object_lock_enabled" {
  value = [
    for bucket in var.bucketname:
    aws_s3_bucket.test-izzuddin-tf-createbucket-from-module-foreach[bucket].object_lock_enabled
  ]
}