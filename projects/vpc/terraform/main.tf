# VPC Creation
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

# Public Subnets Creation

resource "aws_subnet" "public_subnet_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.128.0/20"
  availability_zone = "us-east-1a"

  tags = {
    "Name" = "Public Subnet 1"
  }
}

resource "aws_subnet" "public_subnet_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.144.0/20"
  availability_zone = "us-east-1b"

  tags = {
    "Name" = "Public Subnet 2"
  }
}
resource "aws_subnet" "public_subnet_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.160.0/20"
  availability_zone = "us-east-1c"

  tags = {
    "Name" = "Public Subnet 3"
  }
}
resource "aws_subnet" "public_subnet_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.176.0/20"
  availability_zone = "us-east-1d"

  tags = {
    "Name" = "Public Subnet 4"
  }
}



