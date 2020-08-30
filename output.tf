
output "ip_public" {
  value = "${aws_instance.web[*].public_ip}"
  descrition = "saida com ip publico das instancias"
}

output "ip_private" {
  value = "${aws_instance.web[*].private_ip}"
  descrition = "saida com ip privado das instancias"
}

output "instance_id" {
  value = "${aws_instance.web[*].id}"
  descrition =  "saidas com os ids das instancias"
}
