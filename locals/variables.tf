variable "ami_id" {
    type        = string
    default     = "ami-09c813fb71547fc4f"
    description = "AMI ID of joindevops RHEL9"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "Roboshop"
        Prupose = "variables-demo"
    }
}

variable "sg_name" {
    default = "allow_all"
}

variable "sg_description" {
    default = "allowing all ports from internet"
}

variable "from_port" {
    default = 0
}

variable "to_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    default = {
        Name = "allow-all"
    }
}

variable "environment" {
    default = "dev"
}

variable "instances" {
    # default = {
    #   "mongodb" = "t3.micro", # each keyword is assigned for every iteration. you will get each.key and each.value
    #   "redis" = "t3.micro", 
    #   "mysql" = "t3.small", 
    #   "rabbitmq" = "t3.micro"  
    # }
    default = ["mongodb", "redis", "mysql", "rabbitmq"]
}

variable "zone_id" {
    default = "Z00739521QV9O17MO88NQ"
}

variable "domain_name" {
    default = "adevops.shop"
}

variable "project" {
    default = "roboshop"
}

variable "component" {
    default = "cart"
}

variable "common_tags" {
    default = {
        Project = "roboshop"
        Terraform = "true"
    }
}

# variable "final-name" {
#     default = "${var.project}-${var.environment}-${var.component}"
# }

# ec2 name = cart
# ec2 name = roboshop-dev-cart