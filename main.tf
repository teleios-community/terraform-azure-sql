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
  name           = var.database_name
  server_id      = azurerm_mssql_server.sql_server.id
  sku_name       = var.sku_name
  collation      = var.collation
  max_size_gb    = var.max_size_gb
  zone_redundant = var.zone_redundant

  tags = var.tags

  lifecycle {
    prevent_destroy = var.prevent_destroy
  }
}
