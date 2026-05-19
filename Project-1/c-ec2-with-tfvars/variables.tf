variable "instance_type" {
    type = string
}

variable "ami_id" {
    type = string
}

variable "aws_region" {
    type = string
}

variable "instance_name" {
    type = string
    default = "default-instance-name"
}

variable "environment" {
    type = string
}