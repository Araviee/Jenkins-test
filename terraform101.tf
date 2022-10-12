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
  access_key = "AKIA2VR2KS7FEUENHV7W"
  secret_key = "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"

}

resource "aws_instance" "test" {

  ami = "ami-0dc2d3e4c0f9ebd18"
  instance_type = "t2.micro"
  tags = {
    Name = "Test"
  }
}
