provider "aws" {
  region = "us-west-1"
}

resource "aws_vpc" "actions" {
  cidr_block = "10.0.0.0/24"
  
  tags = {
    Name = "actions30"
  }
}