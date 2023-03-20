provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
      createdBy = "Terraform"
      module    = "terraform-aws-rds"
    }
  }
}

provider "random" {
}
