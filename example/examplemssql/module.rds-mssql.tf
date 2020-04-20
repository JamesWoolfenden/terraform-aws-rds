
module "rds-mssql" {
  source            = "../../"
  common_tags       = var.common_tags
  subnet_ids        = var.subnet_ids
  instance          = var.instance
  instance_password = "Password123"
  subnet_group      = var.subnet_group
  storage_encrypted = false
}
