# This is the provider
provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-narcisse"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
