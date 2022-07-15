#Ec2 outputs
output "ec2_arn" {
  value = aws_instance.appliance.arn
}

output "ec2_instance_arn" {
  value = aws_instance.appliance.arn
}

output "ec2_public_ip" {
  value = aws_instance.appliance.public_ip
}