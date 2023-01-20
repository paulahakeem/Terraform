resource "aws_instance" "my-instance" {
  ami                         = "ami-06878d265978313ca"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.subnets[0].id
  vpc_security_group_ids      = [aws_security_group.secg.id]
  associate_public_ip_address = true
  user_data                   = file("install.sh")
  tags = {
    Name = "Terraform-ec2"
  }
}

resource "aws_instance" "my-instance1" {
  ami                         = "ami-06878d265978313ca"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.subnets[1].id
  vpc_security_group_ids      = [aws_security_group.privseg1.id]
  associate_public_ip_address = false
  user_data                   = file("install.sh")
  tags = {
    Name = "private-ec2"
  }
}