terraform {
    required_providers {
        aws = {
            source = "registry.terraform.io/hashicorp/aws"
            version = "6.44.0"
        }
    }
}

provider "aws" {
    region = var.aws_region
}

resource "aws_vpc" "demo-vpc" {
    cidr_block = var.vpc_cidr
    enable_dns_hostnames = true
    enable_dns_support = true
    tags ={
        Name = "demo-vpc"
    }
}

resource "aws_subnet" "public_subnet1" {
    vpc_id = aws_vpc.demo-vpc.id
    cidr_block = var.public_subnet1_cidr
    availability_zone = var.availability_zone_a
    tags = {
        Name = "public-subnet1"
    }
}

resource "aws_subnet" "public_subnet2" {
    vpc_id = aws_vpc.demo-vpc.id
    cidr_block = var.public_subnet2_cidr
    availability_zone = var.availability_zone_b
    tags = {
        Name = "public-subnet2"
    }
}

resource "aws_internet_gateway" "my-igw" {
    vpc_id = aws_vpc.demo-vpc.id
    tags = {
        Name = "my-igw"
    }
}

resource "aws_security_group" "my-sg" {
    name = "demo-sg"
    description = "Security group for demo VPC"
    vpc_id = aws_vpc.demo-vpc.id
    tags = {
        Name = "demo-sg"
    }
}

resource "aws_security_group_rule" "rule1" {
    type = "ingress"
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = [var.allowed_http]
    security_group_id = aws_security_group.my-sg.id
}

resource "aws_security_group_rule" "rule2" {
    type = "egress"
    from_port = 0
    to_port = 0
    protocol = "-1" # -1 means allow all protocols
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.my-sg.id
}