provider "aws" {
  region  = "us-west-2"
  profile = "${var.aws-profile}"
}

resource "aws_s3_bucket" "b" {
  count  = "${length(var.s3_bucket_name)}"
  bucket = "${var.s3_bucket_name[count.index]}"
  acl    = "public-read"
}
