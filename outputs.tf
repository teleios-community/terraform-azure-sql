output "sql_server_name" {
  value       = azurerm_mssql_server.sql_server.name
  description = "The name of the SQL Server"
}

output "sql_server_fqdn" {
  value       = azurerm_mssql_server.sql_server.fully_qualified_domain_name
  description = "FQDN of the SQL Server"
}

output "sql_database_name" {
  value       = azurerm_mssql_database.sql_db.name
  description = "The name of the SQL Database"
}

output "sql_server_id" {
  value       = azurerm_mssql_server.sql_server.id
  description = "Resource ID of the SQL Server"
}

