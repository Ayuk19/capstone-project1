resource "aws_lb" "app_alb" {
  name               = "capstone-alb"
  load_balancer_type = "application"
  internal           = false

  security_groups = [aws_security_group.alb_sg.id]
  subnets         = [aws_subnet.public_a.id, aws_subnet.public_b.id]

  tags = {
    Name = "capstone-alb"
  }
}
