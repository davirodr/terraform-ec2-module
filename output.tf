output "ip_address_public" {
  value = "${aws_instance.web.public_ip}, ${aws_instance.web.id}, ${aws_instance.web.private_ip}"
}
