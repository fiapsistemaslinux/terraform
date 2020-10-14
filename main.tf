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

	tags = {
		project	= "demo"
	        rm	= "PF0935"
	}
}
