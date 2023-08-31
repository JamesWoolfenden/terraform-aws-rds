terraform {
  required_providers {
    aws = {
      version = "5.13.1"
      source  = "hashicorp/aws"
    }
    random = {
      version = "3.4.3"
      source  = "hashicorp/random"
    }
  }
  required_version = ">=1.3.0"
}
