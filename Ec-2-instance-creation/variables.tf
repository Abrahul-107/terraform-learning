
variable "aws_region"{
    description = "AWS region to deploy resources"
    default = "us-east-2"
}

variable "key_name"{
    description = "Name of the key"
    default = "ec2-key"
}

variable "public_key_path"{
    description = "Path to the public ssh key"
    default = "C:/Users/rahul/.ssh/id_rsa.pub"
}

variable "instance_type" {
    description = "EC-2 instance type"
    default = "t2.micro"
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]  # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

data "aws_vpc" "default" {
  default = true
}
