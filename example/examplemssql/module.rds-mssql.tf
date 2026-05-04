module "rds-mssql" {
  source       = "../../"
  allowed_cidr = ["${module.data.ip}/32"]

  deletion_protection = true
  monitoring_interval = 0
  multi_az            = false
  subnet_ids          = data.aws_subnets.all.ids
  instance            = var.instance
  # checkov:skip=CKV_SECRET_6
  instance_password = "Password123"
  subnet_group      = var.subnet_group
  kms_key_arn       = aws_kms_key.example.arn
  vpc_id            = data.aws_vpc.default.id
}
module "data" {
  source = "git::https://github.com/JamesWoolfenden/terraform-http-ip.git?ref=2f3cef24e667fb840a3d3481f5a1aaa5a1ac7d28" #v0.3.14
}
