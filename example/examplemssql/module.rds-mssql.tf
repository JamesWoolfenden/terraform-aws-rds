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
  source = "git::https://github.com/JamesWoolfenden/terraform-http-ip.git?ref=5769331633debca683a81a38470083a0abd39049"
}
