variable "generated_key_name" {
  type        = string
  default     = "key-ec2"
  description = "Key-pair"
}

resource "tls_private_key" "dev_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = var.generated_key_name
  public_key = tls_private_key.dev_key.public_key_openssh

  # Generate "terraform-key-pair" in current directory
  provisioner "local-exec" {
    command = <<-EOT
      echo '${tls_private_key.dev_key.private_key_pem}' > ./ansible/'${var.generated_key_name}'.pem
      chmod 400 ./ansible/'${var.generated_key_name}'.pem
    EOT
  }

}