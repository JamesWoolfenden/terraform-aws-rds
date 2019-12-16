common_tags = {
"createdby" = "Terraform" }


instance = {
  allocated_storage                     = 20
  auto_minor_version_upgrade            = true
  availability_zone                     = "us-west-2a"
  backup_retention_period               = 7
  backup_window                         = "07:33-08:03"
  copy_tags_to_snapshot                 = true
  deletion_protection                   = false
  enabled_cloudwatch_logs_exports       = []
  engine                                = "postgres"
  engine_version                        = "11.5"
  iam_database_authentication_enabled   = false
  instance_class                        = "db.m5.xlarge"
  iops                                  = 0
  license_model                         = "postgresql-license"
  maintenance_window                    = "thu:06:15-thu:06:45"
  max_allocated_storage                 = 1000
  monitoring_interval                   = 60
  multi_az                              = false
  name                                  = "contoso"
  option_group_name                     = "default:postgres-11"
  parameter_group_name                  = "default.postgres11"
  performance_insights_enabled          = true
  performance_insights_retention_period = 7
  port                                  = 5432
  publicly_accessible                   = false
  security_group_names                  = []
  skip_final_snapshot                   = true
  storage_encrypted                     = true
  storage_type                          = "gp2"
  snapshot_identifier                   = ""
  username                              = "dbgeezer"
}

subnet_group = [{
  name_prefix = "jgw"
  description = "postgres-group-name"
}]
