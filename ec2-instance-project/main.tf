# This is main code

data "aws_subnet" "public_subnet" {
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
  vpc_security_group_ids  = [aws_security_group.web_ec2_sg.id] # Attach the SG ID from resource below

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<html><body><h1>EC2 deployed with Terraform love!!!</h1></body></html>" > /var/www/html/index.html
              EOF             

  tags = {
    Name = "decaf_coffee_ec2_instance"
  }
}

resource "aws_security_group" "web_ec2_sg" {
  name        = "allow-web-traffic-sg-terraform"
  description = "Allow WEB inbound traffic and all outbound traffic"
  vpc_id      = data.aws_subnet.public_subnet.vpc_id # laziness!!!

  ingress  {
    description = "allow ssh traffic"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] # dont do this
  }

  ingress  {
    description = "allow web traffic"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}
