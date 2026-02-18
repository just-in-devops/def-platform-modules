locals {
  name = "${var.environment}-${var.mission}-${var.service_name}"

  default_tags = {
    Environment = var.environment
    Mission     = var.mission
    Service     = var.service_name
    ManagedBy   = "Terraform"
  }

  merged_tags = merge(local.default_tags, var.tags)
}

