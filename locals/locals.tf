locals {
  ami_id = 
  sg_id = 
  instance_type = var.instance_name == "db" ? "t3.micro" : "t2.micro"
  tags = {
    Name = "locals"
  }
}