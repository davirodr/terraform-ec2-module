output "ip_address" {
  value = {
    for instance in aws_instance.web :
    instance.id => instance.public_ip
    instance.id => instance.private_ip
  }
}