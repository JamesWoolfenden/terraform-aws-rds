data "aws_iam_role" "rds_monitor" {
  count = var.rds_role == "" ? 1 : 0
  name  = "rds-monitoring-role"
}

data "aws_caller_identity" "current" {}
