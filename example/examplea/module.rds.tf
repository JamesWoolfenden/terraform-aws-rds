module "rds" {
  source               = "../../"
  allowed_cidr         = "${module.data.ip}/32"
  subnet_ids           = data.aws_subnet_ids.examplea.ids
  instance             = var.instance
  instance_password    = random_password.password.result
  db_subnet_group_name = tolist(data.aws_subnet_ids.examplea.ids)[0]
  subnet_group         = var.subnet_group
  kms_key_arn          = aws_kms_key.example
  multi_az             = true
  vpc_id               = data.aws_vpc.examplea[0].id
}

data "aws_subnet_ids" "examplea" {
  vpc_id = data.aws_vpc.examplea[0].id
}

data "aws_vpcs" "examplea" {}

data "aws_vpc" "examplea" {
  count = length(data.aws_vpcs.examplea.ids)
  id    = tolist(data.aws_vpcs.examplea.ids)[count.index]
}

module "data" {
  source  = "jameswoolfenden/ip/http"
  version = "0.3.2"
}
