resource aws_db_instance instance {
  allocated_storage    = var.instance["allocated_storage"]
  engine               = var.instance["engine"]
  engine_version       = var.instance["engine_version"]
  instance_class       = var.instance["instance_class"]
  name                 = var.instance["name"]
  parameter_group_name = var.instance["parameter_group_name"]
  password             = var.instance_password
  storage_type         = var.instance["storage_type"]
  username             = var.instance["username"]
}
