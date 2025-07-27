# variables.tf
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure location (e.g., eastus)"
  type        = string
}

variable "sql_server_name" {
  description = "Name of the Azure SQL Server"
  type        = string
  
  validation {
    condition     = length(var.sql_server_name) >= 1 && length(var.sql_server_name) <= 63
    error_message = "SQL Server name must be between 1 and 63 characters."
  }
}

variable "sql_admin_username" {
  description = "Administrator username for the SQL server"
  type        = string
}

variable "sql_admin_password" {
  description = "Administrator password for the SQL server"
  type        = string
  sensitive   = true
  
  validation {
    condition     = length(var.sql_admin_password) > 8
    error_message = "SQL Admin password must be at least 8 characters long."
  }
}

variable "database_name" {
  description = "Name of the SQL database"
  type        = string
}

variable "sku_name" {
  description = "The SKU for the SQL database (e.g., Basic, S0, P1)"
  type        = string
  default     = "S0"
}
