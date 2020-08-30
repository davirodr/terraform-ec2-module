data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu teste
}

resource "aws_instance" "web" {
  ami           = var.enable_sg ? var.list_sg : [data.aws_ami.ubuntu.id]
  instance_type = var.instance_type
 // vpc_security_group_ids = var.enable_sg ? aws_security_group.allow_tls[*].id : data.
  tags = {
    Name = var.app_name
  }
}
