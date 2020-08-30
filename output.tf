output "ip_address" {
  value = "${aws_instance.web[*].public_ip}"
}
/*
output "public_address" {
  value = {
    for instance in aws_instance.web :
    instance.id => instance.public_ip
  }
}
output "private_address" {
  value = {
    for instance in aws_instance.web :
    instance.id => instance.private_ip
  }
}

*/