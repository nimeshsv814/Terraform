output "vpc_id" {
    value = aws_vpc.demo-vpc.id
}

output "vpc_cidr" {
    value = aws_vpc.demo-vpc.cidr_block
}

output "public_subnet1_id" {
    value = aws_subnet.public_subnet1.id
}

output "public_subnet1_cidr" {
    value = aws_subnet.public_subnet1.cidr_block
}

output "public_subnet2_id" {
    value = aws_subnet.public_subnet2.id
}

output "public_subnet2_cidr" {
    value = aws_subnet.public_subnet2.cidr_block
}

output "internet_gateway_id" {
    value = aws_internet_gateway.my-igw.id
}