terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
  }

  backend "s3" {
    bucket                 = "bucket-esaraiva"
    key                    = "aws-vm/terraform.tfstate"
    region                 = "sa-east-1"
    #skip_region_validation = true
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

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "bucket-esaraiva"
    key    = "aws-vpc/terraform.tfstate"
    region = "sa-east-1"
  }
}