variable "sql_server_name" {
  description = "Name of the SQL Server"
  type        = string
}

variable "sql_database_name" {
  description = "Name of the SQL Database"
  type        = string
}

variable "sql_max_size_gb" {
  description = "Maximum size of the database in GB"
  type        = number
}

variable "sql_server_version" {
  description = "SQL Server version"
  type        = string
  default     = "12.0"
}

variable "sql_collation" {
  description = "Database collation setting"
  type        = string
  default     = "SQL_Latin1_General_CP1_CI_AS"
}

variable "sql_zone_redundant" {
  description = "Whether the database is zone redundant"
  type        = bool
  default     = false
}

#variable "sql_prevent_destroy" {
 # description = "Whether to prevent destroying the database"
  #type        = bool
  #default     = false
#}

variable "sql_admin_username" {
  description = "Admin username for SQL Server"
  type        = string
}

variable "sql_admin_password" {
  description = "Admin password for SQL Server"
  type        = string
  sensitive   = true
}

variable "sql_sku_name" {
  description = "SKU for the SQL Database"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group for SQL resources"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g., dev, prod)"
  type        = string
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {}
}
