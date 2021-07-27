
instance = {
  enabled_cloudwatch_logs_exports       = []
  instance_class                        = "db.t2.micro"
  storage_type                          = ""
  username                              = "dbgeezer"
  name                                  = "data"
  engine_version                        = ""
  engine                                = "mysql"
  allocated_storage                     = 20
  snapshot_identifier                   = ""
  skip_final_snapshot                   = false
  security_group_names                  = ["sc1232345"]
  port                                  = 1433
  performance_insights_retention_period = 20
  performance_insights_enabled          = false
  option_group_name                     = ""
  max_allocated_storage                 = 1000
  maintenance_window                    = "thu:06:15-thu:06:45"
  deletion_protection                   = false
  iam_database_authentication_enabled   = false
  copy_tags_to_snapshot                 = false
  iops                                  = 0
  license_model                         = ""
  availability_zone                     = "eu-west-2a"
  backup_retention_period               = 14
  auto_minor_version_upgrade            = true
  backup_window                         = "07:33-08:03"
}

subnet_group = [{
  name        = "mysql-jgw"
  description = "mysql-group-name"
}]
