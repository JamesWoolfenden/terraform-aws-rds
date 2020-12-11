module "rds" {
  source               = "../../"
  common_tags          = var.common_tags
  subnet_ids           = data.aws_subnet_ids.private.ids
  instance             = var.instance
  instance_password    = random_password.password.result
  db_subnet_group_name = tolist(data.aws_subnet_ids.private.ids)[0]
  subnet_group         = var.subnet_group
  rds_role             = data.aws_iam_role.rds.arn
  kms_key_id           = data.aws_kms_key.rds.arn
}
