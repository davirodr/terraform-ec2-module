data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Ubuntu teste
}

resource "aws_instance" "web" {
  ami = var.enable_ami ? "ami-0c34018d0aabaef93" : [data.aws_ami.ubuntu.id]
  instance_type = var.instance_type

  tags = {
    Name = var.app_name
  }
}
