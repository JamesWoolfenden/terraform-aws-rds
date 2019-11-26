module rds {
  source      = "../../"
  common_tags = var.common_tags
  subnet_ids  = [""]
  instance    = var.instance
}
