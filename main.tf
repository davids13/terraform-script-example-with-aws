provider "aws" {
	version    = "~> 2.0"
	region     = var.aws_region
	access_key = var.aws_access_key
	secret_key = var.aws_secret_key
}

resource "aws_instance" "terraform-script-example" {
  ami           = var.ami_image
  tags = { Name = var.name_of_the_instance }
  instance_type = var.instance_type_value
}