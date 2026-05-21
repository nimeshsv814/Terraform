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

resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = "main-vpc"
    }
}