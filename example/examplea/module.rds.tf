module "rds" {
  source       = "../../"
  allowed_cidr = ["${module.data.ip}/32", "86.147.65.211/32"]

  deletion_protection  = true
  subnet_ids           = ["subnet-0562ef1d304b968f4"]
  instance             = var.instance
  instance_password    = random_password.password.result
  db_subnet_group_name = "subnet-0562ef1d304b968f4"
  subnet_group         = var.subnet_group
  kms_key_arn          = aws_kms_key.example.arn
  multi_az             = true
  vpc_id               = "vpc-03036aea287d9ee9b"
}


module "data" {
  source  = "jameswoolfenden/ip/http"
  version = "0.3.12"
}
