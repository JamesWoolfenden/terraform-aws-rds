resource "aws_db_parameter_group" "custom" {
  count       = (var.instance["engine"] == "postgres" ? 1 : 0)
  name        = var.custom_db_group_name
  description = var.description

  family = var.family
  parameter {
    #can be pending-reboot or immediate, but immediate will reboot your db
    apply_method = "pending-reboot"
    name         = "shared_preload_libraries"
    value        = "pgaudit"
  }

  parameter {
    apply_method = "pending-reboot"
    name         = "pgaudit.role"
    value        = "rds_pgaudit"
  }

  tags = var.common_tags
}
