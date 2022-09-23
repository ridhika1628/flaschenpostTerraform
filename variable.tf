variable "location" {
  type        = string
  description = "The Azure Region of where the Resource Group and Storage Account are to be created."
}

variable "resource_group_name" {
  type        = string
}

variable "repl_type" {
  description = "The replication type required for the new Storage Account."
  type        = string
}

variable "account_tier" {
  description = "The Storage Tier for the new Account. Options are 'Standard' or 'Premium'"
  type        = string
}

variable "storage_account_name" {
  description = "Storage Account name"
  type        = string
}

variable "access_tier" {
  description = "Defines the access tier for storage accounts. Valid options are Hot and Cool."
  type        = string
}





