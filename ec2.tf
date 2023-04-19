resource "aws_instance" "ovni" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  #count = var.instance_count
  key_name = var.key_name
  #subnet_id = var.subnet_id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  #associate_public_ip_address = true

  tags = {
    Name = "Jenkins"
  }
}