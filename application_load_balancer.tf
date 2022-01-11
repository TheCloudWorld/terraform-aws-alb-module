###################################################################
## Application Load Balancer
##################################################################

resource "aws_lb" "applications_load_balancer" {
  name                             = var.application_load_balancer_name
  internal                         = var.internal_or_internet_facing
  load_balancer_type               = var.loadBalancer_type
  security_groups                  = data.aws_security_groups.sg.ids
  drop_invalid_header_fields       = var.drop_invalid_header_alb
  idle_timeout                     = var.timeout_idle_alb
  enable_cross_zone_load_balancing = var.enable_cross_zone_load_balancing_nlb
  subnets                          = [for s in data.aws_subnet.private : s.id]
  tags = {
    Environment = var.alb_environment_tag
  }
}

