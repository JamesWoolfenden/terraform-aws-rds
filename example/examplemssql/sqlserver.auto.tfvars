instance = {
  auto_minor_version_upgrade            = false
  allocated_storage                     = 20
  availability_zone                     = ""
  backup_retention_period               = 7
  backup_window                         = "23:01-23:31"
  copy_tags_to_snapshot                 = true
  create_db_parameter_group             = false
  deletion_protection                   = false
  engine                                = "sqlserver-ex"
  engine_version                        = "14.00.3223.3.v1"
  iam_database_authentication_enabled   = false
  identifier                            = "demodb"
  iops                                  = 0
  instance_class                        = "db.t2.micro"
  license_model                         = "license-included"
  monitoring_interval                   = 0
  maintenance_window                    = "tue:22:19-tue:22:49"
  monitoring_role_arn                   = ""
  max_allocated_storage                 = "1000"
  multi_az                              = false
  name                                  = ""
  option_group_name                     = "default:sqlserver-ex-14-00"
  parameter_group_name                  = "default.sqlserver-ex-14.0"
  password                              = "YourPwdShouldBeLongAndSecure!"
  performance_insights_enabled          = true
  performance_insights_retention_period = "7"
  port                                  = "1433"
  security_group_names                  = null
  skip_final_snapshot                   = true
  snapshot_identifier                   = ""
  storage_type                          = ""
  timezone                              = "Central Standard Time"
  username                              = "admin"
}

common_tags = {
  "createdby" = "Terrraform"
}

subnet_group = [{
  name        = "group-1"
  name_prefix = null
  description = "sql dbs"
}]

subnet_ids = ["subnet-f60eff81", "subnet-11438974", "subnet-ebd9cead"]
