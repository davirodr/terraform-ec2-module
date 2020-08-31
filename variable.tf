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

variable "name" {
  type        = string
  default     = "SG-padrao"
  description = "(optional) describe your variable"
}

variable "default_ingress" {
  type = map(object({description = string, cidr_blocks = list(string)}))
  default = {
    22 = { description = "Inbound para SSH", cidr_blocks = [ "127.0.0.1/32" ] }
    80 = { description = "Inbound para HTTP", cidr_blocks = [ "127.0.0.1/32" ] }
    443 = { description = "Inbound para HTTPS", cidr_blocks = [ "127.0.0.1/32" ] }
    5432 = { description = "Inbound para postgres", cidr_blocks = [ "127.0.0.1/32" ] }
  }
}