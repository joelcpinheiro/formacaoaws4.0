resource "aws_security_group" "bia-alb-teste" {
  name        = "bia-alb-teste"
  description = "Allow Access BIA ALB"
  ingress {
    description = "Allow HTTP traffic on port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow HTTP traffic on port 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "bia-ec2-teste" {
  name        = "bia-ec2-teste"
  description = "Allow Access BIA from EC2"
  ingress {
    description = "Allow HTTP traffic from ec2 instances from ECS"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    security_groups  = [aws_security_group.bia-alb-teste.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
