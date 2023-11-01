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

# RDS variables

 variable "database_snapshot_identifier" {
    default     = "arn:aws:rds:us-east-1:733971065592:snapshot:dv-rds-db-snapshot"
    description = "the database snapshot arn"
    type        = string
}

variable "database_instance_class" {
    default     = "db.t2.micro"
    description = "the database instance type"
    type        = string
}

variable "database_instance_identifier" {
    default     = "dv-rds-db"
    description = "the database instance identifier"
    type        = string
}

variable "multi_az_deployment" {
    default     = false
    description = "create a standby db instance"
    type        = bool
}


# alb variables
variable "ssl_Certificate_arn" {
    default     = "arn:aws:acm:us-east-1:733971065592:certificate/9144295f-82ce-4088-96e5-03829158fe97"
    description = "SSL certificate arn"
    type        = string
}

# sns-topic variable
variable "operator_email" {
    default     = "shanthc1@umbc.edu"
    description = "a vaid email address"
    type        = string
}


# ASG variables

variable "launch_template_name" {
    default     = "dev-launch-template"
    description = "name of the launch template"
    type        = string
}

variable "ec2_image_id" {
    default     = "ami-0d09fc94a4aaed839"
    description = "id if the AMI"
    type        = string
}

variable "ec2_instance_type" {
    default     = "t2.micro"
    description = "ec2 instance type"
    type        = string
}

variable "ec2_key_pair_name" {
    default     = "devKP"
    description = "ec2 key pair name"
    type        = string
}


# route 53 variables

variable "domain_name" {
    default     = "shan-chas.com"
    description = "domain name"
    type        = string
}

variable "record_name" {
    default     = "www"
    description = "sub domain name"
    type        = string
}
