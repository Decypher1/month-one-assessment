variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type_web" {
  description = "Instance type for web servers"
  default     = "t3.micro"
}

variable "instance_type_db" {
  description = "Instance type for database server"
  default     = "t3.small"
}

variable "key_name" {
  description = "Name of AWS key pair"
}

variable "my_ip" {
  description = "Your public IP address for SSH access"
}