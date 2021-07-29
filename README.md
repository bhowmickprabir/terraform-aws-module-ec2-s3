Terraform module for creating EC2 Instance

Version: v1.0.0 
Release date: 29-Jul-2021

Example:
Use it as modules:

module "server" {
    source = "/data/Gagandeep/app3"
    ami = "ami-00399ec92321828f5"
}
 or you can passon parameter for Instance type as well:

module "server2" {
    source = "/data/Gagandeep/app3"
    i_type = "t2.nano"
}

output "IP" {
 value = module.server2.PUBLIC_IP
}

INPUT variables: 
ami //AMI ID for AWS Instance
i_type //Instance type for aws i.e. t2.

Output Variable:
PUBLIC_IP   //public IP of created server