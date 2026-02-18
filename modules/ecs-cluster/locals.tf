locals {
  name = "${var.environment}-${var.mission}-ecs-cluster"

  default_tags = {
    Environment = var.environment
    Mission     = var.mission
    ManagedBy   = "Terraform-by-JJ"
  }

  merged_tags = merge(local.default_tags, var.tags)
}

