variable "resource_group_name" {
  description = "Name der Azure Resource Group"
  type        = string
  default     = "rg-cloud-programming"
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "Switzerland North"
}

variable "storage_account_name" {
  description = "Name des Storage Accounts (muss global eindeutig, nur Kleinbuchstaben)"
  type        = string
  default     = "stcloudprogiu"
}

variable "key_vault_name" {
  description = "Name des Key Vault (muss global eindeutig sein)"
  type        = string
  default     = "kv-cloud-prog-iu"
}

variable "cdn_profile_name" {
  description = "Name des CDN Profils"
  type        = string
  default     = "cdn-cloud-programming"
}

variable "cdn_endpoint_name" {
  description = "Name des CDN Endpoints (muss global eindeutig sein)"
  type        = string
  default     = "cdne-cloud-programming-iu"
}
