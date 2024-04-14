# Setup Output values
output "public_ip" {
  description = "return the public ip of the EC2 instance"
  value = aws_instance.decaf_coffee_instance.public_ip
}

output "dns_name" {
  description = "return Public DNS name assigned to the instance"
  value = aws_instance.decaf_coffee_instance.public_dns
}

output "instance_id" {
  description = "return ID of the instance."
  value = aws_instance.decaf_coffee_instance.id
}
