# Terraform Block
terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  #  backend "s3" {
  #    bucket = "tf-on-aws-for-ec2"
  #    key    = "ec2/terraform.tfstate"
  #    region = "us-east-1" 

  # Enable during Step-09     
  # For State Locking
  #    dynamodb_table = "dev-project1-ec2"    
  #  }    
}
