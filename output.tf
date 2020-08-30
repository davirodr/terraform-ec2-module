
output "ip_public" {
  value = "${aws_instance.web[*].public_ip}"
  description = "saida com ip publico das instancias"
}

output "ip_private" {
  value = "${aws_instance.web[*].private_ip}"
  description = "saida com ip privado das instancias"
}

output "instance_id" {
  value = "${aws_instance.web[*].id}"
  description =  "saidas com os ids das instancias"
}
