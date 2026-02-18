variable "environment" { type = string }
variable "mission" { type = string }
variable "service_name" { type = string }

variable "cluster_arn" { type = string }

variable "network" {
  type = object({
    vpc_id     = string
    subnet_ids = list(string)
  })
}

variable "container" {
  type = object({
    image          = string
    cpu            = number
    memory         = number
    port           = number
    desired_count  = number
  })
}

variable "tags" {
  type = map(string)
}

