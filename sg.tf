resource "aws_security_group" "sg_optional" {
  count       = var.enable_sg ? 1 : 0 : count.index <= 1 : 
  name        = "allow_tls-${var.name}"
  description = "Allow TLS inbound traffic"


  dynamic "ingress" {
    for_each = var.default_ingress
    content {
      description = ingress.value["description"]
      from_port   = ingress.key
      to_port     = ingress.key
      protocol    = "tcp"
      cidr_blocks = ingress.value["cidr_blocks"]
    }
  }

  ingress {
    description = "22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}