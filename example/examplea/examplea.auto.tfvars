
instance = {
  allocated_storage                     = 20
  availability_zone                     = "eu-west-2a"
  backup_window                         = "07:33-08:03"
  enabled_cloudwatch_logs_exports       = []
  engine                                = "mysql"
  engine_version                        = ""
  iam_database_authentication_enabled   = true
  instance_class                        = "db.t2.micro"
  iops                                  = 0
  license_model                         = ""
  maintenance_window                    = "thu:06:15-thu:06:45"
  max_allocated_storage                 = 1000
  name                                  = "data"
  option_group_name                     = ""
  performance_insights_enabled          = false
  performance_insights_retention_period = 20
  port                                  = 1433
  skip_final_snapshot                   = false
  snapshot_identifier                   = ""
  storage_type                          = "gp2"
  username                              = "dbgeezer"
}

subnet_group = [{
  name        = "mysql-jgw"
  description = "mysql-group-name"
}]
