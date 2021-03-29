output "db_subnet_group" {
  value = aws_db_subnet_group.access
}

output "instance" {
  value     = aws_db_instance.instance
  sensitive = true
}
