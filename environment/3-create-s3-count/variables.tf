variable "region" {}

variable "AWS_DEFAULT_PROFILE" {
  type    = string
  default = "default"
}

variable "bucket_names" {
  type = list(string)
  default = [ "test-izzuddin-tf-count1", "test-izzuddin-tf-count2", "test-izzuddin-tf-count3" ]
}