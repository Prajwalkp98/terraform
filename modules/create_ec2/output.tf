output "ec2_public_ip_address" {
    value = aws_instance.terraform_instance1.public_ip
}   


