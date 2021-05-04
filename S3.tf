module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  bucket = "lesson7-s3-bucket"
  acl    = "private"
  versioning = {
    enabled = true
  }
}
provider "aws" {
  region = "eu-central-1b"
}
resource "lesson_s3_bucket" "example" {
  bucket = "lesson7-s3-tf-bucket"
  acl = "private"
  versioning {
    enabled = true
  }
  tags {
    Name = "lesson7-s3-tf-bucket"
  }

}