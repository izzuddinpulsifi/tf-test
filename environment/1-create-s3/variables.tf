variable "region" {}

variable "AWS_DEFAULT_PROFILE" {
  type    = string
  default = "default"
}

variable "bucket_name" {
  description = "Value of the Name for the s3 bucket"
  type        = string
  default     = "test-izzuddin-tf-createbucket"
}