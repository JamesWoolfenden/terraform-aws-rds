output "db_subnet_group" {
  value = aws_db_subnet_group.access
}
output "instance" {
  value     = aws_db_instance.instance
  sensitive = true
}
output "username_location" {
  value = aws_secretsmanager_secret.username
}
output "password_location" {
  value = aws_secretsmanager_secret.password
}
output "security_group" {
  value = aws_security_group.dbaccess
}
output "policy" {
  value = aws_iam_policy.dbaccess
}
