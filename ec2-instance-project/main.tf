# This is main code

data "aws_subnet" "public_subnet" {
  #id = "subnet-0547bfd22735d8418" # lookup the Subnet ID value
  filter {
    name   = "tag:Name"
    values = ["awesome-class-pub-sub1"]
  }
}

resource "aws_instance" "decaf_coffee_instance" {
  ami                     = var.ami_id
  instance_type           = var.instance_type
  key_name                = var.key_name
  subnet_id               = data.aws_subnet.public_subnet.id # Reference the data source 
  disable_api_termination = var.enable_termination_protection

  tags = {
    Name = "decaf_coffee_ec2_instance"
  }
}
