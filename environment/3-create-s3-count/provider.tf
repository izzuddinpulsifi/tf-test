provider "aws" {
  region  = var.region
  profile = terraform.workspace
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_credentials_validation = true
}