provider "aws" {
    region = "us-east-2"
}


resource "aws_instance" "web" {
    ami = "ami-06d4b7182ac3480fa"
    instance_type = "t2.micro"
    availability_zone = "us-east-2a"
    key_name = "my-laptop-key"
}
