locals {
  ami_id = "ami-090252cbe067a9e58"
  sg_id = "sg-07a2609d1c0f0371e"
  instance_type = var.instance_name == "db" ? "t3.micro" : "t2.micro"
  tags = {
    Name = "locals"
  }
}