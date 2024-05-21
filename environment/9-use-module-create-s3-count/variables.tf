variable "region" {}

variable "AWS_DEFAULT_PROFILE" {
  type    = string
  default = "default"
}

variable "bucketnames" {
  description = "Value of the Name for the s3 bucket using Count"
  type        = list(string)
  default = [ "test-izzuddin-tf-module-count1", "test-izzuddin-tf-module-count2", "test-izzuddin-tf-module-count3" ]
}