terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
    
  }
}

provider "aws" {
  region = "ap-south-1"
  access_key = "<replace with your aws access key>"
  secret_key = "replace with your aws secret key"
}


resource "aws_instance" "web" {
  ami           = "ami-0cc9838aa7ab1dce7"
  instance_type = "t2.micro"

  tags = {

    Name = "HelloDevopsUniverse"
  }
  
}