# terraform-azure-sql

A Terraform module to provision an **Azure SQL Server** and a **SQL Database**.

---

## ✅ Features

- Creates an Azure SQL Server
- Provisions an SQL Database with configurable SKU
- Securely sets admin credentials
- Compatible with AzureRM provider `>= 3.0`

---

## 📦 Module Usage

```hcl
module "sql" {
  source  = "teleios-devops/sql/azure"
  version = "1.0.0"

  resource_group_name = "my-resource-group"
  location            = "eastus"

  sql_server_name     = "my-sql-server"
  sql_admin_username  = "sqladmin"
  sql_admin_password  = "MyStrongP@ssw0rd!"
  database_name       = "mydb"
  sku_name            = "S0"
}

| Name                  | Type   | Description                                      | Required             |
| --------------------- | ------ | ------------------------------------------------ | -------------------- |
| `resource_group_name` | string | Name of the resource group                       | ✅ Yes                |
| `location`            | string | Azure region where the resources will be created | ✅ Yes                |
| `sql_server_name`     | string | Name of the SQL server                           | ✅ Yes                |
| `sql_admin_username`  | string | SQL admin username                               | ✅ Yes                |
| `sql_admin_password`  | string | SQL admin password (sensitive)                   | ✅ Yes                |
| `database_name`       | string | Name of the SQL database                         | ✅ Yes                |
| `sku_name`            | string | SKU name for the database (e.g., `S0`, `P1`)     | ❌ No (default: `S0`) |


| Name              | Description              |
| ----------------- | ------------------------ |
| `sql_server_name` | Name of the SQL server   |
| `sql_db_name`     | Name of the SQL database |


