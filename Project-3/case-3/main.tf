provider "aws" {
    region = var.region
}

resource "aws_instance" "vm" {
    ami = var.region_ami[var.region]
    instance_type = var.instance_type
    tags = {
        Name = "vm-instance"
    }
}