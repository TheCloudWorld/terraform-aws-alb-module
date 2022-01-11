######################################################
## Data to fetch VPC details
######################################################

data "aws_vpc" "vpc_selected" {
  filter {
    name   = "tag:Name"
    values = ["tcw_vpc"]
  }
}

###################################################################
## Data to be fetched for subnets
##################################################################
data "aws_subnet_ids" "private1" {
  vpc_id = data.aws_vpc.vpc_selected.id
  filter {
    name   = "tag:Name"
    values = ["tcw_public_subnet_az_1*"]
  }
}
data "aws_subnet" "private" {
  for_each = data.aws_subnet_ids.private1.ids
  id       = each.value
}
data "aws_security_groups" "sg" {
  tags = {
    Name = "tcw_security_group"
  }
}