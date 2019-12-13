data "aws_subnet_ids" "private" {
  vpc_id = element(tolist(data.aws_vpcs.main.ids), 0)
  tags = {
    Name = "*private*"
  }
}


data "aws_vpcs" "main" {}

data "aws_iam_role" "rds" {
  name = "rds-monitoring-role"
}

data "aws_kms_key" "rds" {
  key_id = "alias/aws/rds"
}
