# Variables
variable "access_key" {
  default = "ACCESS_KEY_HERE"
}
variable "secret_key" {
  default = "SECRET_KEY_HERE"
}
variable "region" {
  default = "us-east-2"
}
variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default     = "10.1.0.0/16"
}
variable "cidr_subnet" {
  description = "CIDR block for the subnet"
  default     = "10.1.0.0/24"
}
variable "availability_zone" {
  description = "availability zone to create subnet"
  default     = "us-west-2a"
}
variable "public_key_path" {
  description = "Public key path"
  default     = "~/.ssh/id_rsa.pub"
}
variable "instance_ami" {
  description = "ami-0892d3c7ee96c0bf7"
  default     = "ami-0892d3c7ee96c0bf7"
}
variable "instance_type" {
  description = "type for aws EC2 instance"
  default     = "t2.micro"
}
variable "environment_tag" {
  description = "Environment tag"
  default     = "Production"
}
