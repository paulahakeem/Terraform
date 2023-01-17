resource "aws_security_group" "secg" {
  vpc_id      = aws_vpc.paulavpc1.id
  name        = "paulasecg"
  description = "Allow HTTP and SSH access from anywhere"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


#resource "aws_security_group" "example" {
#description = "Allow all traffic from anywhere"

#ingress {
# from_port   = 0
#to_port     = 65535
#protocol    = "-1"
# cidr_blocks = ["0.0.0.0/0"]
#}
#}
