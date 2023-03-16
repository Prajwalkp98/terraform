resource "aws_instance" "terraform_instance1" {
    ami = var.ami-id
    instance_type = var.ec2-type

    tags = {
        Name = "terraform"
    }
  
} 


resource "aws_s3_bucket" "bucket" {
    bucket = "prjwal9876"

    tags = {
        Name = "mybucket1"
    }
  
} 