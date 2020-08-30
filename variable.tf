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

variable "enable_ami" {
  type        = bool
  default     = true
  description = "(optional) describe your variable"
}

variable "list_ami" {
  type        = list(string)
  default     = []
  description = "(optional) describe your variable"
}