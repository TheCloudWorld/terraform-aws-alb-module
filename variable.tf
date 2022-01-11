###############################################################
## Application Load Balancer
###############################################################
variable "region_name" {
  type    = string
  default = "us-east-1"
}
variable "alb_count" {
  description = "Count of ALB"
  type        = number
  default     = 2
}
variable "application_load_balancer_name" {
  description = "Name of the APplication Load Balancer"
  type        = string
  default     = "my-ALB"
}
variable "internal_or_internet_facing" {
  description = "Whether ALB should be internal or internet-facing-- True means internal & False means internet-facing"
  type        = bool
  default     = true
}
variable "deletion_protection" {
  description = "Whether deletion protection is required"
  type        = bool
  default     = false
}
variable "bucket_name_for_logs" {
  description = "Enter the bucket name to store the logs"
  type        = string
  default     = ""
}
variable "prefix_of_logs" {
  description = "Mention the prefix name for logs"
  type        = string
  default     = ""
}
variable "access_logs_enable" {
  description = "Whether access logs is required"
  type        = bool
  default     = false
}
variable "alb_environment_tag" {
  description = "mention the environment name"
  type        = string
  default     = "test"
}
variable "loadBalancer_type" {
  description = "Mention the type of load balancer you need- 'application', 'network', 'gateway'"
  type        = string
  default     = "application"
}
variable "drop_invalid_header_alb" {
  description = "Indicates whether HTTP headers with header fields that are not valid are removed by the load balancer (true) or routed to targets (false)."
  type        = bool
  default     = false
}
variable "timeout_idle_alb" {
  description = "The time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type application."
  type        = number
  default     = 60
}
variable "enable_cross_zone_load_balancing_nlb" {
  description = "Cross zone load balancing needs to be enalbed or not.. only for NLB"
  type        = bool
  default     = false
}


