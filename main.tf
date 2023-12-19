provider "aws" {
    region = var.region
}


resource "aws_instance" "web" {
    ami = data.aws_ami.amazan_ami
    instance_type = var.instance_type
    availability_zone = var.az
    key_name = "my-laptop-key"
}

data "aws_ami" "amazon_ami" {
  most_recent = true
  filter {
    name   = "name"
    values = [var.ami_name]
  }
  owners = ["self"]
}
