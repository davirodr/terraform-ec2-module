data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  owners = ["099720109477"] # My User
}

resource "aws_instance" "web" {

  for_each = toset(var.ami_ids)
  ami      = each.value

  instance_type = var.instance_type

  tags = {
    Name = var.app_name
  }
}
