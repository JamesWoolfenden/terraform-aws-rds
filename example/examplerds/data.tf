data "aws_subnet_ids" "private" {
  vpc_id = element(tolist(data.aws_vpcs.main.ids), 0)
  tags = {
    Name = "*Private*"
  }
}


data "aws_vpcs" "main" {}
