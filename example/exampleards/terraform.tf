terraform {
  required_providers {
    aws = {
      version = "3.20.0"
      source  = "hashicorp/aws"
    }
    random = {
      version = "3.0.0"
      source  = "hashicorp/random"
    }
  }
}
