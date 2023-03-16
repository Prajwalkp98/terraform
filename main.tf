 resource "tls_private_key" "rsa" {
  algorithm = "RSA"
  rsa_bits = 4096
}

resource "aws_key_pair" "pem_file" {
  key_name = var.key_name
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "local_file" "pem-key" {
    content = tls_private_key.rsa.private_key_pem
    filename = var.key_path
  
}

resource "aws_instance" "terraform_instance1" {
    ami = var.ami_id
    instance_type = var.ec2_type
    key_name = aws_key_pair.pem_file.key_name
    tags = {
        Name = "terraform"
    }
    //ghjfhj
  
} 


