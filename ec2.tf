data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["IaaSWeek-${var.hash_commit}"]
  }

  owners = ["178520105998"] # My User
}

resource "aws_instance" "web" {

  for_each = toset(var.ami_ids)
  ami      = each.value

  instance_type = var.instance_type

  tags = {
    Name = var.app_name
  }
}
