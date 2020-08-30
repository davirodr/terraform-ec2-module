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


variable "enable_ids" {
  type        = bool
  default     = false
  description = "(optional) describe your variable"
}

variable "ami_ids" {
  type        = list(string)
  default     = ["ami-0758470213bdd23b1"]
  description = "(optional) describe your variable"
}