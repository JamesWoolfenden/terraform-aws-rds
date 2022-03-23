
module "rds-mssql" {
  source            = "../../"
  subnet_ids        = var.subnet_ids
  instance          = var.instance
  instance_password = "Password123"
  subnet_group      = var.subnet_group
  kms_key           = aws_kms_key.example
}
