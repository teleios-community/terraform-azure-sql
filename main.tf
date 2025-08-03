resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.sql_server_version
  administrator_login          = var.sql_admin_username
  administrator_login_password = var.sql_admin_password
  tags                         = var.tags
}

resource "azurerm_mssql_database" "sql_db" {
  name           = var.sql_database_name
  server_id      = azurerm_mssql_server.sql_server.id
  sku_name       = var.sql_sku_name
  collation      = var.sql_collation
  max_size_gb    = var.sql_max_size_gb
  zone_redundant = var.sql_zone_redundant

  tags = var.tags

  lifecycle {
    prevent_destroy = var.sql_prevent_destroy
  }
}
