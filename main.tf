provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "kubernetes" {
  ami           = "ami-0f8a61b66d1accaee"
  instance_type = "t2.medium"
  key_name      = "PRACTICE"

  tags = {
    Name = "k8s-node"
  }
}
