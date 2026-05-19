terraform {
    required_providers {
        aws = {
            source = "registry.terraform.io/hashicorp/aws"
            version = "6.44.0"
        }
    }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "ec2-runtime-var" {
    ami = var.ami_id
    instance_type = var.instance_type
}