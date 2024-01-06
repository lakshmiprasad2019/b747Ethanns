terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

variable "region" {
  default = "ap-south-1"
}
resource "aws_vpc" "my_vpc_test" {
  cidr_block = "10.15.0.0/16"
  
  tags = {
    Name = "Dev-VPC"
  }
}
resource "aws_vpc" "my_vpc_test1" {
  cidr_block = "10.20.0.0/16"
  
  tags = {
    Name = "Prod-VPC"
  }
}
resource "aws_vpc" "my_vpc_test2" {
  cidr_block = "10.30.0.0/16"

  tags = {
    Name = "Stage-VPC"
  }
}

