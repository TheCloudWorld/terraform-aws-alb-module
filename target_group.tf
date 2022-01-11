######################################################
## Instance Target Group
######################################################

resource "aws_lb_target_group" "alb_target_group" {
  name     = "tg"
  port     = 8080
  protocol = "HTTP"
  vpc_id   = data.aws_vpc.vpc_selected.id
  stickiness {
    type    = "lb_cookie"
    enabled = false
  }
  tags = {
    "Name" = "tg"
  }
}