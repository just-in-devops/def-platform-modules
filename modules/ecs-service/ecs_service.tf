resource "aws_ecs_service" "this" {
  name            = local.name
  cluster         = var.cluster_arn
  task_definition = aws_ecs_task_definition.this.arn
  desired_count   = var.container.desired_count
  launch_type     = "FARGATE"

  network_configuration {
    subnets         = var.network.subnet_ids
    security_groups = [aws_security_group.service.id]
    assign_public_ip = true
  }

  tags = local.merged_tags
}

