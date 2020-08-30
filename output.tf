output "ip_public" {
  value = "${aws_instance.web[*].public_ip}"
}

output "ip_private" {
  value = "${aws_instance.web[*].private_ip}"
}

output "instance_id" {
  value = "${aws_instance.web[*].id}"
}