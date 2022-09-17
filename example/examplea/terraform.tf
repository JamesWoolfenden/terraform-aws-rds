terraform {
  required_providers {
    aws = {
      version = "4.10.0"
      source  = "hashicorp/aws"
    }
    random = {
      version = "3.0.0"
      source  = "hashicorp/random"
    }
  }
  required_version = ">=0.14.8"
}
