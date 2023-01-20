resource "aws_route_table" "public-route" {
  vpc_id = aws_vpc.paulavpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "routeforgw"
  }

}
resource "aws_route_table_association" "public-sub" {
  subnet_id      = aws_subnet.subnets[0].id
  route_table_id = aws_route_table.public-route.id
}


resource "aws_route_table" "private-route" {
  vpc_id = aws_vpc.paulavpc1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natway.id
  }
  tags = {
    Name = "route-for-nat-gateway"
  }

}
resource "aws_route_table_association" "private-sub" {
  subnet_id      = aws_subnet.subnets[1].id
  route_table_id = aws_route_table.private-route.id
}
