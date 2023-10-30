# VPC variables
variable "vpc_cidr" {
    default     = "10.0.0.0/16"
    description = "vpc cidr block"
    type        = string
}

variable "public_subnet_az1_cidr" {
    default     = "10.0.0.0/24"
    description = "public subnet az1 cidr"
    type        = string
}

variable "public_subnet_az2_cidr" {
    default     = "10.0.1.0/24"
    description = "public subnet az2 cidr"
    type        = string
}

variable "private_app_subnet_az1_cidr" {
    default     = "10.0.2.0/24"
    description = "private app subnet az1 cidr"
    type        = string
}

variable "private_app_subnet_az2_cidr" {
    default     = "10.0.3.0/24"
    description = "private app subnet az2 cidr"
    type        = string
}

variable "private_data_subnet_az1_cidr" {
    default     = "10.0.4.0/24"
    description = "private data subnet az1 cidr"
    type        = string
}

variable "private_data_subnet_az2_cidr" {
    default     = "10.0.5.0/24"
    description = "private data subnet az2 cidr"
    type        = string
}

# security group variable
 variable "ssh_location" {
    default     = "130.85.59.150/32"
    description = "the ip address that can ssh into the ec2 instances"
    type        = string
}

# alb variables
variable "ssl_Certificate_arn" {
    default     = "arn:aws:acm:us-east-1:733971065592:certificate/e0910d1f-9bff-4eb2-98d9-f6a89efe879f"
    description = "SSL certificate arn"
    type        = string
}

# sns-topic variable
variable "operator_email" {
    default     = "shanthc1@umbc.edu"
    description = "a vaid email address"
    type        = string
}