module "rds" {
  source            = "../../"
  common_tags       = var.common_tags
  subnet_ids        = data.aws_subnet_ids.examplea.ids
  instance          = var.instance
  instance_password = random_string.db_password.result
  subnet_group      = var.subnet_group
}

data "aws_subnet_ids" "examplea" {
  vpc_id = data.aws_vpc.examplea[0].id
}

data "aws_vpcs" "examplea" {}

data "aws_vpc" "examplea" {
  count = length(data.aws_vpcs.examplea.ids)
  id    = tolist(data.aws_vpcs.examplea.ids)[count.index]
}
