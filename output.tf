output "ip_public" {
  value = "${aws_instance.web[*].public_ip}, ${aws_instance.web[*].private_ip}"
}
