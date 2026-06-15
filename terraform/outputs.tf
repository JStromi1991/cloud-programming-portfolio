output "resource_group_name" {
  description = "Name der Resource Group"
  value       = azurerm_resource_group.main.name
}

output "website_url" {
  description = "URL der statischen Website (Blob Storage)"
  value       = azurerm_storage_account.main.primary_web_endpoint
}

output "cdn_url" {
  description = "URL des CDN Endpoints"
  value       = "https://${azurerm_cdn_endpoint.main.host_name}"
}

output "key_vault_uri" {
  description = "URI des Key Vault"
  value       = azurerm_key_vault.main.vault_uri
}

output "storage_account_name" {
  description = "Name des Storage Accounts"
  value       = azurerm_storage_account.main.name
}
