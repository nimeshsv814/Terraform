variable "region" {
    type = string
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "region_ami" {
    type = map(string)
    default = {
        "us-east-1" = "ami-091138d0f0d41ff90"
        "ap-south-1" = "ami-07a00cf47dbbc844c"
    }
}