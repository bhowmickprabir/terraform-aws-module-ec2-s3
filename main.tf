resource "aws_instance" "server1" {
ami = var.ami
instance_type = var.i_type
tags = {
    Name = upper("Gagan-app-instance")
}
}

module "s3" {
    source = "./modules/s3-module"
    bucket_name = var.bucket
    }