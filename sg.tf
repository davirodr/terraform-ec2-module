resource "aws_security_group" "allow_tls" {
  count       = var.enable_sg ? 1 : 0
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"


  dynamic "ingress" {
    interator = port
    for_each  = var.list_sg
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
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