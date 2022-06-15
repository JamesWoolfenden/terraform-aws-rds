resource "aws_iam_policy" "dbaccess" {
  count       = var.instance["iam_database_authentication_enabled"] == true ? 1 : 0
  name_prefix = "rds-access-${var.instance["username"]}"
  policy      = <<POLICY
{
   "Version": "2012-10-17",
   "Statement": [
      {
         "Effect": "Allow",
         "Action": [
             "rds-db:connect"
         ],
         "Resource": [
            "arn:aws:rds-db:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:dbuser:${aws_db_instance.instance.resource_id}/${var.instance["username"]}"
         ]
      }
   ]
}
POLICY
}
