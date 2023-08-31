module "rds" {
  source               = "../../"
  apply_immediately    = true
  deletion_protection  = true
  allowed_cidr         = ["${module.data.ip}/32", "86.147.65.211/32"]
  subnet_ids           = data.aws_subnet_ids.examplea.ids
  instance             = var.instance
  instance_password    = random_password.password.result
  db_subnet_group_name = tolist(data.aws_subnet_ids.examplea.ids)[0]
  subnet_group         = var.subnet_group
  custom_db_group_name = var.custom_db_group_name
  kms_key_arn          = aws_kms_key.example.arn
  publicly_accessible  = false
  monitoring_interval  = 60
  family               = "postgres14"
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
  source = "git::https://github.com/jameswoolfenden/terraform-http-ip.git?ref=6e651695dc636de858961f36bc54ffe9e744e946"
}
