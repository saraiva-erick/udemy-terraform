variable "location" {
  description = "Varável que india onde os recursos serão criados"
  type        = string
  default     = "Brazil South"
}

variable "database_admin_login" {
  default = "wordpress"
}

variable "database_admin_password" {
  default = "w0rdpr3ss@p4ss"
}