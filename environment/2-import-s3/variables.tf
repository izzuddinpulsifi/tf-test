variable "region" {}

variable "AWS_DEFAULT_PROFILE" {
  type    = string
  default = "default"
}
variable "bucket_name_import" {
  description = "Value of the Name for the import s3 bucket"
  type        = string
  default     = "test-izzuddin-tf-import"
}