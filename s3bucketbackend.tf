resource "aws_s3_bucket" "states_s3" {
  bucket = "state-bucket12-2023"
  acl    = "private"
  versioning {
    enabled = true
  }
}