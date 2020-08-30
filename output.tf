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