resource "aws_instance" "webserver" {
  ami = data.aws_ami.ubuntu2204.id
  instance_type = var.instance_type
  #count = var.instance_count
  key_name = var.key_name
  subnet_id = var.subnet_id
  vpc_security_group_ids = [aws_security_group.sec-group.id]
  associate_public_ip_address = true

  tags = {
    Name = "Web Server"
  }
}

# resource "aws_instance" "webserver2" {
#   ami = data.aws_ami.amazon-2.id
#   instance_type = var.instance_type
#   availability_zone = "us-east-1b"
#   #count = var.instance_count
#   key_name = var.key_name
#   #subnet_id = var.subnet_id
#   vpc_security_group_ids = [aws_security_group.sec-group.id]
#   associate_public_ip_address = true

#   tags = {
#     Name = "DB Server"
#   }
# }