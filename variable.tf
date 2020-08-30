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

variable "enable_sg" {
  type        = bool
  default     = false
  description = "(optional) describe your variable"
}

variable "list_sg" {
  type        = list(string)
  default     = ["ami-0758470213bdd23b1", "ami-0758470213bdd23b2"]
  description = "(optional) describe your variable"
}