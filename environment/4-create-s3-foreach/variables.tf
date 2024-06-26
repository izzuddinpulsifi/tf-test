variable "region" {}

variable "AWS_DEFAULT_PROFILE" {
  type    = string
  default = "default"
}

variable "bucket_names" {
  type = list(string)
  default = [ "test-izzuddin-tf-foreach1withoutput", "test-izzuddin-tf-foreach2withoutput", "test-izzuddin-tf-foreach3withoutput" ]
}