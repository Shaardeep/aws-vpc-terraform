resource "aws_instance" "monitoring_ec2" {
  count         = 4
  ami           = "ami-0f5ee92e2d63afc18"  # Amazon Linux 2 (ap-south-1)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.PublicSubnet_1b.id
  key_name      = "test_practice"

  vpc_security_group_ids = [
    aws_security_group.monitoring_sg.id
  ]

  associate_public_ip_address = true

  tags = {
    Name = ["server-1", "server-2", "prometheus", "grafana"][count.index]
  }
}
