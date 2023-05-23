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
    key    = "aws-vm-modulo-local/terraform.tfstate"
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

module "network" {
  source = "./network"

  #Variáveis
  cidr_vpc    = "10.0.0.0/16"
  cidr_subnet = "10.0.1.0/24"
  ambiente    = "desenvolvimento"
}