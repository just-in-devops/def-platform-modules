locals {
  alb_name = "${var.environment}-${var.mission}-${var.name}-alb"

  default_tags = {
    Environment = var.environment
    Mission     = var.mission
    ManagedBy   = "Terraform"
  }

  merged_tags = merge(local.default_tags, var.tags)
}

