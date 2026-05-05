module "rds" {
  source               = "../../"
  apply_immediately    = true
  deletion_protection  = true
  allowed_cidr         = ["${module.data.ip}/32"]
  subnet_ids           = data.aws_subnets.all.ids
  instance             = var.instance
  instance_password    = random_password.password.result
  subnet_group         = var.subnet_group
  custom_db_group_name = var.custom_db_group_name
  kms_key_arn          = aws_kms_key.example.arn
  publicly_accessible  = false
  monitoring_interval  = 60
  family               = "postgres14"
  multi_az             = true
  vpc_id               = data.aws_vpc.default.id
}
module "data" {
  source = "git::https://github.com/JamesWoolfenden/terraform-http-ip.git?ref=2f3cef24e667fb840a3d3481f5a1aaa5a1ac7d28" #v0.3.14
}
