terraform {
  required_version = ">= 0.8"
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-047f7b46bd6dd5d84"
  instance_type = "t2.micro"

  tags {
    Name = "terraform-example"
  }
}
