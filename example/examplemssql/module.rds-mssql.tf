module "rds-mssql" {
  source       = "../../"
  allowed_cidr = ["${module.data.ip}/32"]

  deletion_protection = true
  subnet_ids          = var.subnet_ids
  instance            = var.instance
  # checkov:skip=CKV_SECRET_6
  instance_password = "Password123"
  subnet_group      = var.subnet_group
  kms_key_arn       = aws_kms_key.example.arn
  vpc_id            = data.aws_vpc.examplea[0].id
}
module "data" {
  source = "git::https://github.com/jameswoolfenden/terraform-http-ip.git?ref=6e651695dc636de858961f36bc54ffe9e744e946"
}
