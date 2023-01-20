terraform {
  backend "s3" {
    bucket  = "state-bucket12-2023"
    key     = "terraform.tfstate"
    region  = "us-east-1"
  }
}