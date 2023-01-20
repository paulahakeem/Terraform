resource "aws_vpc" "paulavpc1" {
  cidr_block           = var.vpc-cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "paula-vpc"
  }
}