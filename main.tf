resource "aws_instance" "terraform_instance1" {
    ami = var.ami_id
    instance_type = var.ec2_type

    tags = {
        Name = "terraform"
    }
    //ghjfhj
  
}  

resource "aws_s3_bucket" "bucket" {
    bucket = "prjwal9876"

    tags = {
        Name = "mybucket1"
    }
  
}