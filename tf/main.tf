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
### Create instance
resource "aws_instance" "diplom" {
  ami           = var.ami
  instance_type = var.instance_type
  associate_public_ip_address = true
  key_name      = var.SSH_PRIVATE_KEY
  vpc_security_group_ids = [resource.aws_security_group.web.id]  
### Run commands  
  # provisioner "remote-exec" {
  #   inline = ["sudo apt update", "echo Done!"]
  
  # connection {
  #   type = var.connection_type
  #   user = var.connection_user
  #   host = "${aws_instance.diplom.public_ip}"
  #   private_key = "${file("terraform_ec2_key")}"
  # }
  # }

  tags =  {
    name = "ubuntu server"
    description = "created by terraform"
    owner = "Dmitry Yankov"
    }
  }
### Add SSH-key
resource "aws_key_pair" "terraform_ec2_key" {
	key_name = var.key_name
}

### Create security group
resource "aws_security_group" "web" {
  name        = "web"
  description = "web"
  
  ingress {
    description = "ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name        = "web"
    description = "created by terraform"
    owner = "Dmitry Yankov"

  }
}

