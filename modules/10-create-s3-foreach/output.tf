output "bucketname" {
  value = [
    for bucket in var.bucketname:
    aws_s3_bucket.test-izzuddin-tf-createbucket-from-module-count[bucket].bucket_domain_name
  ]
}