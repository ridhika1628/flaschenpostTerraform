# Azure - Resource Group Module
Module to create a resourse group

| Name | Value |
| --- | --- |
| Resource Group | sre-challenge-flashenpost |

# Azure - Storage Account Module
Module to create an Azure storage account with one container, sku and access level with below details.

| Name | Value |
| --- | --- |
| Storage Account Name | flashchenpost_storage_account |
| Location | WestEurope |
| Account Tier | Standard |
| Account Replication Type | LRS |
| Access Tier | Hot |
| Department | SRE |

# Azure - Storage Account Container Module
Module to create Azure storage account container.
A container organizes a set of blobs, similar to a directory in a file system. A storage account can include an unlimited number of containers, and a container can store an unlimited number of blobs. The container name must be lowercase.

| Name | Value |
| --- | --- |
| Container Name | flashchenpost_container |
| Container Access Type | Private |


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.2.8 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.11.0 |


## Providers
| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.11.0 |



## Required Arguments

| Name | Type | Required | Description |
| --- | --- | --- | --- |
| `sa_resource_group_name` | `string` | true | The name of the resource group where the new Storage Account Will be created. |
| `storage_account_name` | `string` | true | The name of the Storage Account. |
| `location` | `string` | true | Location of the storage account to be created. |
| `account_tier` | `string` | true | Account tier to be selected while creating storage account. |
| `account_replication_type` | `string` | true | It is to select the account replication type. |
| `access_tier` | `string` | true | Type of access tier to be selected from Cool, Hot |
| `department` | `string` | true | The Department type to be selected during creation of storage account. |
| `container_name` | `string` | true | The name of the container which will be created under storage account. |
| `container_access_type` | `string` | true | While creating a container, access type to be selected as Private. |



## Outputs

| Name | Description |
| --- | --- |
| `storage_account_id` | The ID of the Storage Account |
| `storage_primary_connection_string` | The primary connection string for the storage account |
| `storage_primary_access_key` | The primary access key for the storage account |
| `container_id` | The ID of the storage account container |