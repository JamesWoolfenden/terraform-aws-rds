resource "aws_db_subnet_group" "access" {
  count       = length(var.subnet_group)
  name_prefix = var.subnet_group[count.index]["name_prefix"]
  description = var.subnet_group[count.index]["description"]
  subnet_ids  = var.subnet_ids
  tags        = var.common_tags
}
