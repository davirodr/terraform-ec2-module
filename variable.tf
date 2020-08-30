variable "hash_commit" {
  default = "806d52dafe9b7fddbc4f0d2d41086ed3cfa02a44"
}

variable "app_name" {
  type        = string
  default     = "Sem nome"
  description = "Nome da app"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "Tipo de instância ec2 usada na AWS"
}


variable "enable_ids" {
  type = bool
  default = false
  description = "(optional) describe your variable"
}

variable "ami_ids" {
  type = list(string)
  default = []
  description = "(optional) describe your variable"
}