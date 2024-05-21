variable "region" {}

variable "AWS_DEFAULT_PROFILE" {
  type    = string
  default = "default"
}

variable "bucket_names" {
  type = map(object({
    bucket = string
    object_lock_enabled = bool
  }))
  default = {
    "bucket_one" = {
      bucket = "test-izzuddin-tf-map1"
      object_lock_enabled = true
    }
    "bucket_two" = {
      bucket = "test-izzuddin-tf-map2"
      object_lock_enabled = false
    }
  }
}
variable "environment" {}