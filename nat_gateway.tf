resource "aws_eip" "ip" {
  vpc = true
}

resource "aws_nat_gateway" "natway" {
  allocation_id = aws_eip.ip.id
  subnet_id     = aws_subnet.subnets[0].id

  tags = {
    Name = "gw NAT"
  }

  depends_on = [aws_internet_gateway.gw]
}