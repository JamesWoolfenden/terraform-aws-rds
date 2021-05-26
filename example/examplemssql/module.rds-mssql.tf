
module "rds-mssql" {
  source            = "../../"
  subnet_ids        = var.subnet_ids
  instance          = var.instance
  instance_password = "Password123"
  subnet_group      = var.subnet_group
  storage_encrypted = false
}
