resource "aws_subnet" "public-subnet1" {
  vpc_id     = aws_vpc.paulavpc1.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "public_subnet1"
  }
}
#"subnet-06154ea406d837327"