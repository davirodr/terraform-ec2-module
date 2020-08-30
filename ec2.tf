data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu teste
}

resource "aws_instance" "web" {
  ami = var.amis_id
  instance_type = data.aws_ami.ubuntu.id

  tags = {
    Name = var.app_name
  }
}
