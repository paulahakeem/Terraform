resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.paulavpc1.id
  tags = {
    Name = "paula-gateway"
  }
}
