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
resource "aws_instance" "diplom1" {
  ami           = var.ami
  instance_type = var.instance_type
  associate_public_ip_address = true
  key_name      = var.SSH_PRIVATE_KEY
  vpc_security_group_ids = [resource.aws_security_group.web1.id]  

  tags =  {
    Name = var.vmname
    description = "created by terraform"
    owner = "Dmitry Yankov"
    }
  }

### Create security group
resource "aws_security_group" "web1" {
  name        = "web1"
  description = "web1"
  ingress {
    protocol = "tcp"
    from_port = 8081
    to_port = 8081
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  ingress {
    protocol = "tcp"
    from_port = 3000
    to_port = 3000
    cidr_blocks = [ "0.0.0.0/0" ]
  } 
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

