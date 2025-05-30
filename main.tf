provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = var.backend_bucket
    key            = "terraform/medusa/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = var.dynamodb_table
  }
}
