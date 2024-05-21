variable "region" {}

variable "AWS_DEFAULT_PROFILE" {
  type    = string
  default = "default"
}

variable "bucketnames" {
  description = "Value of the Name for the s3 bucket using foreach"
  type        = list(string)
  default = [ "test-izzuddin-tf-module-foreach1", "test-izzuddin-tf-module-foreach2", "test-izzuddin-tf-module-foreach3" ]
}