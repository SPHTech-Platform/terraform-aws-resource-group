terraform {
  required_version = ">= 1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.38"
    }
    awscc = {
      source  = "hashicorp/awscc"
      version = "~> 0.71.0"
    }
  }
}
