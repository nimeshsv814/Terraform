resource "aws_instance" "ec2-instances" {
    for_each = var.ec2_instances
    ami = each.value.ami
    instance_type = each.value.instance_type
    tags = {
        Name = each.key
    }
}