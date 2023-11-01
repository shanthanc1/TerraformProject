# Configure AWS provider
provider "aws" {
  region = "us-east-1"
  profile = "terr-user"
}
# Storing the Terraform state file in S3 bucket
terraform {
  backend "s3" {
    bucket = "shan-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "terr-user"
  }
}