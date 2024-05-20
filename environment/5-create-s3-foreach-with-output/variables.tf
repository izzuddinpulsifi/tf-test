variable "region" {}

variable "AWS_DEFAULT_PROFILE" {
  type    = string
  default = "default"
}

variable "bucket_names" {
  type = list(string)
  default = [ "test-izzuddin-tf-foreach1", "test-izzuddin-tf-foreach2", "test-izzuddin-tf-foreach3" ]
}