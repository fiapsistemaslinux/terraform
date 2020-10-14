terraform {
    backend "local" {
	 path = "state/terraform.state"
	}
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "ubuntu" {
	ami		= "ami-0dba2cb6798deb6d8"
	instance_type	= "t2.micro"
	subnet_id	= "subnet-00c345430671ed485"
        associate_public_ip_address = true
        vpc_security_group_ids = ["sg-0f832f987be4f0b1e"]

	tags = {
		project	= "demo"
	        rm	= "PF0935"
	}
}
