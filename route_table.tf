resource "aws_route_table" "public-route" {
  vpc_id = aws_vpc.paulavpc1.id
  tags = {
    Name = "routeforgw"
  }
}
resource "aws_route_table_association" "public-subnet1" {
  subnet_id      = aws_subnet.public-subnet1.id
  route_table_id = aws_route_table.public-route.id
}
