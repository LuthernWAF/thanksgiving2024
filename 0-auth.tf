#authentication

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
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "beronspecial" {
  cidr_block = "10.16.0.0/16"
               
tags = {
    Name    = "beronspecial"
    Service = "Beronspecial"
    Owner   = "Saluki"
    Planet  = "Arrakis"
  }
}
# Create a Public Subnet

resource "aws_subnet" "public-us-east-1a" {
  vpc_id     = aws_vpc.beronspecial.id
  cidr_block = "10.16.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1a"
    Service = "Beronspecial"
    Owner   = "Saluki"
    Planet  = "Arrakis"
  }
}

# Create a Private Subnet

resource "aws_subnet" "private-us-east-1a" {
  vpc_id     = aws_vpc.beronspecial.id
  cidr_block = "10.16.11.0/24"
  availability_zone       = "us-east-1a"

  tags = {
    Name    = "private-us-east-1a"
    Service = "Beronspecial"
    Owner   = "Saluki"
    Planet  = "Arrakis"
  }
}


# Create a Public Subnet

resource "aws_subnet" "public-us-east-1b" {
  vpc_id     = aws_vpc.beronspecial.id
  cidr_block = "10.16.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1b"
    Service = "Beronspecial"
    Owner   = "Saluki"
    Planet  = "Arrakis"
  }
}

# Create a Private Subnet

resource "aws_subnet" "private-us-east-1b" {
  vpc_id     = aws_vpc.beronspecial.id
  cidr_block = "10.16.12.0/24"
  availability_zone       = "us-east-1b"

  tags = {
    Name    = "private-us-east-1b"
    Service = "Beronspecial"
    Owner   = "Saluki"
    Planet  = "Arrakis"
  }
}

