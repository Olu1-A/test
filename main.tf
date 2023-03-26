provider "aws" {
  region = "us-west-1"
}

resource "aws_vpc" "actions" {
  cidr_block = "10.0.0.0/24"
  
  tags = {
    Name = "actions30"
  }
}

terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~3.0"
    }
  }


 backend "s3" {
   bucket= "awsterra"
   key = "prod/terraform.tfstate"
   #dynamodbdynamodb_table = "value
   region = "us-west-1"

 }
}
