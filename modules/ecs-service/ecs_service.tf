resource "aws_ecs_service" "this" {
  name            = local.name
  cluster         = var.cluster_arn
  task_definition = aws_ecs_task_definition.this.arn
  desired_count   = var.container.desired_count
  launch_type     = "FARGATE"

  dynamic "load_balancer" {
    for_each = var.load_balancer == null ? [] : [var.load_balancer]

    content {
      target_group_arn = load_balancer.value.target_group_arn
      container_name   = local.name
      container_port   = var.container.port
    }
  }

  network_configuration {
    subnets          = var.network.subnet_ids
    security_groups  = [aws_security_group.service.id]
    assign_public_ip = false
  }

  tags = local.merged_tags
}

