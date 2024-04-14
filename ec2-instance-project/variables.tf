# Declaring variables
variable "ami_id" {
  description = "The AMI ID used for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type of EC2 instance"
  type        = string
}

variable "key_name" {
  description = "The SSH key of EC2 instance"
  type        = string
}

variable "enable_termination_protection" {
  description = "protect instance from accidental delete"
  type        = bool
}

variable "env" {
  description = "Environment"
  type        = string
}
