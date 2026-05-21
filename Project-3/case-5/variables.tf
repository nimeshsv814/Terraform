variable "ec2_instances" {
    type = map(object({
        instance_type = string
        ami = string
    }))
    default = {
        "web" = {
            instance_type = "t2.micro"
            ami = "ami-091138d0f0d41ff90"
        }
        "app" = {
            instance_type = "t2.micro"
            ami = "ami-091138d0f0d41ff90"
        }
        "db" = {
            instance_type = "t2.micro"
            ami = "ami-091138d0f0d41ff90"
        }
    }   
}