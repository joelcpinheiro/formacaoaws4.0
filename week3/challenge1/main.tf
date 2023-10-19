# Creating a new Application Load Balancer and Target group

#   depends_on = [aws_s3_bucket.example]

resource "aws_lb" "default" {
  name               = "lb-bia"
  internal = false
  load_balancer_type = "Application"
  security_groups = [ aws_security_group.bia-alb-teste ]
}

resource "aws_lb_target_group" "tg-bia" {
  name     = "tg-bia"
  port     = 80
  protocol = "HTTP"
  #vpc_id      = aws_vpc.default.id
  target_type = "ip"
}

resource "aws_lb_listener" "lb-bia" {
  load_balancer_arn = aws_lb.default.id
  port              = "80"
  protocol          = "HTTP"

  default_action {
    target_group_arn = aws_lb_target_group.tg-bia.id
    type             = "forward"
  }
}

# Creating AWS ECS














