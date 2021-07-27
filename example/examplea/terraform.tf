terraform {
  required_providers {
    aws = {
      version = "3.51.0"
      source  = "hashicorp/aws"
    }
    random = {
      version = "3.0.0"
      source  = "hashicorp/random"
    }
  }
  required_version = ">=0.14.8"
}
