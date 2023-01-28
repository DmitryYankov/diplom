variable "region" {
    type = string
    default = "eu-central-1"
}

variable "vmname" {
  type = string
  default = "diplom"
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

variable "ami" {
    type = string
    default = "ami-035e90af11365cc27"
}

variable "SSH_PRIVATE_KEY" {
    type = string
    default = "SSH_PRIVATE_KEY"
}