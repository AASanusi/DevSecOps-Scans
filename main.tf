provider "aws" {
    region = "eu-west-2" # London Region
}

resource "aws_s3_bucket" "first-scan-bucket" {
  bucket = "first-scan-bucket"
}

terraform {
  backend "s3" {
    bucket = "first-scan-bucket"
    key = "global/s3/terraform.tfstate"
    region = "eu-west-2"
  }
}