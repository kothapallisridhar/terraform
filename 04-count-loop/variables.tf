variable environment {
  default = "dev"
  type = string
}

variable "project" {
  default = "roboshop"
  type = string
}

variable "ami_id" {
  type        = string
  default     = "ami-0220d79f3f480ecf5"
  description = "RHEL9 joindevops image"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"

  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium", "t3.large"], var.instance_type)
    error_message = "Instance type should be either t3.micro or t3.small"
  }
}

variable "ec2_tags" {
  type = map(any)
  default = {
    Name        = "terraform-demo-1"
    Project     = "roboshop"
    Environment = "dev"
  }
}

variable "sg_name" {
  default = "allow_terraform"
}

variable "port" {
  type    = number
  default = 0
}

variable "cidr" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map(any)
  default = {
    Name        = "allow_terraform"
    Project     = "roboshop"
    Environment = "dev"
  }
}

variable "instances" {
  default = ["mongodb", "redis", "frontend"]
  #, "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
  type = list
}

variable "zone_id" {
  default = "Z05855511ZBOMUYK6KTI4"
}

variable "domain_name" {
  default = "kothapalli.pro"
}




