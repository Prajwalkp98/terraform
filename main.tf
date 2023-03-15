resource "aws_instance" "terraform_instance1" {
    ami = "ami-0f8ca728008ff5af4"
    instance_type = "t2.micro"

    tags = {
        Name = "terraform"
    }
  
} 


resource "aws_s3_bucket" "bucket" {
    bucket = "mybucket"

    tags = {
        Name = "mybucket1"
    }
  
} 