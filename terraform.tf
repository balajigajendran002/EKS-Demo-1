terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    region = "ap-south-1"
    dynamodb_table = "Terraform_Remote_state"
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = var.aws_region
}
