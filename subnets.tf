resource "aws_subnet" "subnets" {
  vpc_id     = aws_vpc.paulavpc1.id
  cidr_block = var.subnet-cidr[count.index]
  count      = length(var.subnet-cidr)

  tags = {
    Name  = var.subnet-names[count.index]
    count = length(var.subnet-names)
  }

}
