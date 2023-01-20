output "public-ip-ec2" {
  value = aws_instance.my-instance.public_ip
}

output "private-ip-ec2" {
  value = aws_instance.my-instance1.private_ip
}

output "ec2_attributes" {
  value = {
    public_ip   = aws_instance.my-instance.public_ip
    private_ip  = aws_instance.my-instance1.private_ip
    instance_id = aws_instance.my-instance1.id
  }
}