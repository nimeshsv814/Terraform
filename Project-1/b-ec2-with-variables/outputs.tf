output "instance_id" {
    value = aws_instance.simple-ec2.id
}

output "instance_public_ip" {
    value = aws_instance.simple-ec2.public_ip
}

output "instance_arn" {
    value = aws_instance.simple-ec2.arn
}

