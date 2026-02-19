variable "environment" { type = string }
variable "mission" { type = string }
variable "cidr_block" { type = string }

variable "az_count" {
  type    = number
  default = 2
}

variable "tags" {
  type = map(string)
}

