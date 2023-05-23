variable "location" {
  description = "Varável que india onde os recursos serão criados"
  type        = string
  default     = "Brazil South"
}

variable "account_tier" {
  description = "Tier da Storage Account na Azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de repliação de dados da Storage Account na Azure"
  type        = string
  default     = "LRS"
}
