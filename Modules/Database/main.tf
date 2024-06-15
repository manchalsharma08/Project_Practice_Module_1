resource "azurerm_mssql_server" "sqlserver" {
  name                         = "jio-sqlserver"
  resource_group_name          = "jio-rg"
  location                     = "eastus"
  version                      = "12.0"
  administrator_login          = "jiosqldatabase"
  administrator_login_password = "Jio@sql12345"
}

resource "azurerm_mssql_database" "sqldatabase" {
  name           = "jio-db"
  server_id      = azurerm_mssql_server.sqlserver.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  max_size_gb    = 2
  
  sku_name       = "S0"
  zone_redundant = false
  enclave_type   = "VBS"

}


