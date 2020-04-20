output "db_subnet_group" {
  value = module.rds-mssql.db_subnet_group
}

output "instance" {
  value = module.rds-mssql.instance
}
