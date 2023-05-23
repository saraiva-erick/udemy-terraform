terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
  }

  backend "s3" {
    bucket = "bucket-esaraiva"
    key    = "aws-vpc/terraform.tfstate"
    region = "sa-east-1"
  }

}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "erick-saraiva"
      managed_by = "terraform"
    }

  }
}