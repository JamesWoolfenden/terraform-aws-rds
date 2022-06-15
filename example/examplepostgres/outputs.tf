output "db_subnet_group" {
  value = module.rds.db_subnet_group
}

output "instance" {
  value     = module.rds.instance
  sensitive = true
}

output "username_location" {
  value = module.rds.username_location
}

output "password_location" {
  value = module.rds.password_location
}

output "security_group" {
  value = module.rds.security_group
}

output "policy" {
  value = module.rds.policy
}
