
# ec2.tf
resource "aws_instance" "ec2-one" {
  ami                    = "ami-089c26792dcb1fbd4"
  vpc_security_group_ids = [aws_security_group.ec2.id]
  subnet_id              = aws_subnet.private_subnet1.id
  user_data              = file("userdata.sh")
  #  key_name = ""
  instance_type = "t2.micro"
  tags = {
    Name = "webserver-1"
  }
}

resource "aws_instance" "ec2-two" {
  ami                    = "ami-089c26792dcb1fbd4"
  vpc_security_group_ids = [aws_security_group.ec2.id]
  subnet_id              = aws_subnet.private_subnet2.id
  user_data              = file("userdata.sh")
  #  key_name = ""
  instance_type = "t2.micro"
  tags = {
    Name = "webserver-2"
  }
}