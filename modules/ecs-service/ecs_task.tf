resource "aws_ecs_task_definition" "this" {
  family                   = local.name
  cpu                      = var.container.cpu
  memory                   = var.container.memory
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  execution_role_arn       = aws_iam_role.execution_role.arn

  container_definitions = jsonencode([
    {
      name  = local.name
      image = var.container.image
      essential = true
      portMappings = [{
        containerPort = var.container.port
        protocol      = "tcp"
      }]
    }
  ])

  tags = local.merged_tags
}

