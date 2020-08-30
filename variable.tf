variable "app_name" {
  type        = string
  default     = "Sem nome"
  description = "Nome da app"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Tipo de instância ec2 usada na AWS"
}

variable "amis_id" {
  type = string
  default = "data.aws_ami.ubuntu.id"
  description = "(optional) describe your variable"
}