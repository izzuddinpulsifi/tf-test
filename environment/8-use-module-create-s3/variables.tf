variable "region" {}

variable "AWS_DEFAULT_PROFILE" {
  type    = string
  default = "default"
}

variable "bucketnames" {
  description = "Value of the Name for the s3 bucket"
  type        = string
  default     = "test-izzuddin-tf-module-createbucket"
}