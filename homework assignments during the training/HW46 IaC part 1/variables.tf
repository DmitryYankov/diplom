variable "region" {
    type = string
    default = "eu-central-1"
}

variable "network_interface_id" {
  type = string
  default = "network_id_from_aws"
}

variable "all_cidr_block" {
    type = list(string)
    default = []
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

#find ami
data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"] # Canonical
}