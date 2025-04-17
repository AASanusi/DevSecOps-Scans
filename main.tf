provider "aws" {
    region = "eu-west-2" # London Region
}

resource "aws_s3_bucket" "first_scan_bucket" {
  bucket = "first_scan_bucket"
}