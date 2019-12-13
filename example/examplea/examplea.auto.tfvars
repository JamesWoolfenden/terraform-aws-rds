common_tags = {
"createdby" = "Terraform" }


instance = {
  db_subnet_group_name = "dbsubnetrds"
  instance_class       = "db.t2.micro"
  storage_type         = ""
  username             = "dbgeezer"
  parameter_group_name = ""
  name                 = "data"
  engine_version       = ""
  engine               = "mysql"
  allocated_storage    = 20
}
default = [
  {
    name_prefix = "jgw"
    description = ""
}]
