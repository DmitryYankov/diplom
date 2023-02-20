terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}
provider "aws" {
    region = var.region
}
provider "tls" {
  # Configuration options
}
provider "local" {

}
# 1.	Create key pair
resource "tls_private_key" "my" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "my" {
  key_name   = "my_ssh_key"
  public_key = tls_private_key.my.public_key_openssh
  tags =  {
    name = "created by terraform"
    owner = "Dmitry Yankov"
    }
}

resource "local_file" "ssh_key" {
  filename        = "${path.module}/ssh.key"
  content         = tls_private_key.my.private_key_openssh
  file_permission = 0400
}

# 2.	Create EC2 instance
resource "aws_instance" "Dmitry_Yankov_lesson46" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = aws_key_pair.my.key_name

  tags =  {
    name = "created by terraform"
    owner = "Dmitry Yankov"
    }
  
}

