variable "region" {}

variable "AWS_DEFAULT_PROFILE" {
  type    = string
  default = "default"
}

variable "bucket_names" {
  type = list(string)
  default = [ "test-izzuddin-tf-outputwithcondition1", "test-izzuddin-tf-outputwithcondition2", "test-izzuddin-tf-outputwithcondition3" ]
}
variable "environment" {}