terraform {
    backend "s3" {
      bucket = "s32-terraform-bucket"
      key    = "key/terraform.tfstate"
      region = "us-east-1"
    }
}

provider "aws" {
    region = "us-east-1"
    access_key = var.access_key
    secret_key = var.secret_key
}

resource "aws_instance" "ec2_example" {

   ami           = "ami-080e1f13689e07408"
   instance_type = "t2.micro"
   
   tags = {
   	   Name = "Terraform EC2"
   }
}
