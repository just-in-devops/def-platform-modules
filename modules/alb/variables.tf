variable "environment" { type = string }
variable "mission" { type = string }
variable "name" { type = string }

variable "vpc_id" { type = string }
variable "subnet_ids" { type = list(string) }

variable "target_port" { type = number }

variable "tags" { type = map(string) }

