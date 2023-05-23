variable "cidr_vpc" {
  description = "CIDR block para vpc"
  type        = string
  #cidr_vpc = "10.0.0.0/16"
}

variable "cidr_subnet" {
  description = "CIDR block para subnet"
  type        = string
  #cidr_subnet = "10.0.1.0/24"
}

variable "ambiente" {
  description = "Linguagem PaaS usada para criar o ambiente"
  type        = string
  #code-lang = "terraform"  
}