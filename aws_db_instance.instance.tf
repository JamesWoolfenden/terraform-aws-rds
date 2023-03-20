resource "aws_db_instance" "instance" {
  #checkov:skip=CKV_AWS_133:OUT OF DATE CHECK
  apply_immediately                     = var.apply_immediately
  allocated_storage                     = var.instance["allocated_storage"]
  auto_minor_version_upgrade            = true
  availability_zone                     = var.instance["availability_zone"]
  backup_retention_period               = var.instance["backup_retention_period"]
  backup_window                         = var.instance["backup_window"]
  copy_tags_to_snapshot                 = var.copy_tags_to_snapshot
  db_subnet_group_name                  = aws_db_subnet_group.access[0].name
  deletion_protection                   = var.deletion_protection
  enabled_cloudwatch_logs_exports       = var.instance["enabled_cloudwatch_logs_exports"]
  engine                                = var.instance["engine"]
  engine_version                        = var.instance["engine_version"]
  iam_database_authentication_enabled   = var.instance["iam_database_authentication_enabled"]
  instance_class                        = var.instance["instance_class"]
  iops                                  = var.instance["iops"]
  kms_key_id                            = var.kms_key_arn
  identifier                            = var.instance["name"]
  license_model                         = var.instance["license_model"]
  maintenance_window                    = var.instance["maintenance_window"]
  max_allocated_storage                 = var.instance["max_allocated_storage"]
  monitoring_interval                   = var.monitoring_interval
  monitoring_role_arn                   = var.monitoring_role_arn
  multi_az                              = var.multi_az
  db_name                               = var.instance["name"]
  option_group_name                     = var.instance["option_group_name"]
  parameter_group_name                  = var.custom_db_group_name
  password                              = var.instance_password
  performance_insights_enabled          = var.instance["performance_insights_enabled"]
  performance_insights_kms_key_id       = var.kms_key_arn
  performance_insights_retention_period = var.instance["performance_insights_retention_period"]
  port                                  = var.instance["port"]
  publicly_accessible                   = var.publicly_accessible
  skip_final_snapshot                   = var.instance["skip_final_snapshot"]
  snapshot_identifier                   = var.instance["snapshot_identifier"]
  storage_encrypted                     = true
  storage_type                          = var.instance["storage_type"]
  username                              = var.instance["username"]
  vpc_security_group_ids                = [aws_security_group.dbaccess.id]
}


variable "copy_tags_to_snapshot" {
  type    = bool
  default = true
}

variable "deletion_protection" {
  type    = bool
  default = true
}
