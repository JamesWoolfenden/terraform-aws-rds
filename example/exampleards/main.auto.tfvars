common_tags = {
"createdby" = "Terraform" }


instance = {
  db_subnet_group_name = "dbsubnetrdspostgres"
  instance_class       = "db.m5.xlarge"
  storage_type         = "gp2"
  username             = "dbgeezer"
  parameter_group_name = "default.postgres11"
  name                 = "contoso"
  engine_version       = "11.5"
  engine               = "postgres"
  allocated_storage    = 20
}

subnet_group = [{
  name_prefix = "jgw"
  description = "postgres-group-name"
}]
