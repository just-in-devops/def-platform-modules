data "aws_availability_zones" "available" {}

locals {
  name = "${var.environment}-${var.mission}-vpc"

  azs = slice(data.aws_availability_zones.available.names, 0, var.az_count)

  default_tags = {
    Environment = var.environment
    Mission     = var.mission
    ManagedBy   = "Terraform"
  }

  merged_tags = merge(local.default_tags, var.tags)
}

