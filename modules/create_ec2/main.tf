resource "aws_instance" "terraform_instance1" {
    ami = var.ami_id
    instance_type = var.ec2_type
    key_name = var.ec2_pem
    vpc_security_group_ids = [var.ec2_sg_id]
    tags = {
        Name = "terraform"
    }
}