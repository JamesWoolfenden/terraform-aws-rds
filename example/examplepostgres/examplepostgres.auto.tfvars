
instance = {
  allocated_storage                     = 20
  availability_zone                     = "eu-west-2a"
  backup_retention_period               = 7
  backup_window                         = "07:33-08:03"
  enabled_cloudwatch_logs_exports       = ["postgresql", "upgrade"]
  engine                                = "postgres"
  engine_version                        = "14.1"
  iam_database_authentication_enabled   = true
  instance_class                        = "db.t4g.micro"
  iops                                  = 0
  license_model                         = "postgresql-license"
  maintenance_window                    = "thu:06:15-thu:06:45"
  max_allocated_storage                 = 1000
  monitoring_interval                   = 60
  name                                  = "platform2"
  option_group_name                     = "default:postgres-14"
  parameter_group_name                  = "default.postgres14"
  performance_insights_enabled          = true
  performance_insights_retention_period = 7
  port                                  = 5432
  skip_final_snapshot                   = true
  storage_type                          = "gp2"
  snapshot_identifier                   = ""
  username                              = "dbgeezer"
}

subnet_group = [{
  name        = "postgres2"
  description = "postgres2-group-name"
}]

custom_db_group_name = "custom"
