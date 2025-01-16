terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.83.1"
    }
  }
  backend "s3" {
    bucket = "praveen-vpc-practice"
    key    = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "vpc-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}