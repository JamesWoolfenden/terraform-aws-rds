locals {
  rds_role = var.rds_role == "" ? "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/rds-monitoring-role" : var.rds_role
}
