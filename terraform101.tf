terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=2.0"
    }
}
}

provider "aws" {
  region = "us-east-1"
  access_key = $AWS_ACCESS_KEY_ID
  secret_key = $AWS_SECRET_ACCESS_KEY

}

resource "aws_instance" "test" {

  ami = "ami-0dc2d3e4c0f9ebd18"
  instance_type = "t2.micro"
  tags = {
    Name = "Test"
  }
}
