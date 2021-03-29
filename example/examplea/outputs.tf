output "db_subnet_group" {
  value = module.rds.db_subnet_group
}

output "instance" {
  value     = module.rds.instance
  sensitive = true
}
