resource "aws_vpc" "main" {
    cidr_block = var.cidr_block
    tags = {
        Name = "main-vpc"
    }
}

resource "aws_subnet" "example" {
    count = length(var.azs)
    vpc_id = aws_vpc.main.id
    cidr_block = cidrsubnet(var.cidr_block,4,count.index)
    availability_zone = var.azs[count.index]
    tags = {
        Name = "example-subnet-${count.index + 1}"
    }
}