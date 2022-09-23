output "storage_account_id" {
  description = "The ID of the storage account."
  value       = azurerm_storage_account.flashchenpost_storage_account.id
}

output "storage_primary_connection_string" {
  description = "The primary connection string for the storage account"
  value       = azurerm_storage_account.flashchenpost_storage_account.primary_connection_string
  sensitive   = true
}

output "storage_primary_access_key" {
  description = "The primary access key for the storage account"
  value       = azurerm_storage_account.flashchenpost_storage_account.primary_access_key
  sensitive   = true
}


output "container_id" {
  description = "The ID of the storage account container."
  value       = azurerm_storage_container.flashchenpost_container.id
}

