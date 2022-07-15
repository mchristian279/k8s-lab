#AWS Region
variable "aws_region" {
  type    = string
  default = "us-east-1"
}

#Ec2 instance
variable "ec2_ami" {
  type    = string
  default = "ami-0fcda042dd8ae41c7" #Region ami: us-east-1
}

variable "ec2_instance_type" {
  type    = string
  default = "t2.medium"
}

variable "ec2_user" {
  type    = string
  default = "ec2-user"
}