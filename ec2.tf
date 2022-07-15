resource "aws_instance" "appliance" {
  ami                         = var.ec2_ami
  instance_type               = var.ec2_instance_type
  associate_public_ip_address = true
  key_name                    = var.generated_key_name
}
