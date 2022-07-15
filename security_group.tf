resource "aws_security_group" "sg_ec2_instance" {
  name   = "rules_sg_instance"

  ingress {
    description = "SSH to EC2"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}