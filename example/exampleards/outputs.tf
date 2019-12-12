output "security_group" {
  value = module.rds.security_group
}

output "instance" {
  value = module.rds.instance
}


output "password" {
  value = random_password.password.result
}

output "VPC" {
  value = data.aws_vpcs.main.ids
}

output "subnets" {
  value = data.aws_subnet_ids.private
}
