resource "aws_ecs_task_definition" "service" {
  family = "service"
  container_definitions = jsonencode([
    {
      name      = "first"
      image     = "ubuntu@sha256:dda6886d8d153a2d86f046c9335123c6151d83fd63e446b752ed8d9da261205d"
      cpu       = 10
      memory    = 512
      essential = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])
  tags = {
    yor_trace = "9eb6b62d-5d5d-4d0c-a3ef-d654e1e3e7a3"
  }
}
