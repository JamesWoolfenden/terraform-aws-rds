resource "aws_secretsmanager_secret" "username" {
  #checkov:skip=CKV2_AWS_57:
  name                    = "${var.instance["name"]}-db-username"
  recovery_window_in_days = var.recovery_window_in_days
  kms_key_id              = var.kms_key_arn
}
resource "aws_secretsmanager_secret" "password" {
  #checkov:skip=CKV2_AWS_57:
  name                    = "${var.instance["name"]}-db-password"
  recovery_window_in_days = var.recovery_window_in_days
  kms_key_id              = var.kms_key_arn
}
resource "aws_secretsmanager_secret_version" "username" {
  secret_id     = aws_secretsmanager_secret.username.id
  secret_string = var.instance["username"]
}
resource "aws_secretsmanager_secret_version" "password" {
  secret_id     = aws_secretsmanager_secret.password.id
  secret_string = var.instance_password
}
