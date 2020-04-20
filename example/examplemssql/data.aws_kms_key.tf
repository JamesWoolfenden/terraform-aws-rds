data "aws_kms_key" "rds" {
  key_id = "alias/aws/rds"
}
