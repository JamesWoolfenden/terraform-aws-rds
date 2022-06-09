resource "aws_secretsmanager_secret" "username" {
  name       = "${var.instance["name"]}-db-username"
  kms_key_id = var.kms_key.arn
}

resource "aws_secretsmanager_secret" "password" {
  name       = "${var.instance["name"]}-db-password"
  kms_key_id = var.kms_key.arn
}

resource "aws_secretsmanager_secret_version" "username" {
  secret_id     = aws_secretsmanager_secret.username.id
  secret_string = var.instance["name"]
}

resource "aws_secretsmanager_secret_version" "password" {
  secret_id     = aws_secretsmanager_secret.password.id
  secret_string = var.instance_password
}
