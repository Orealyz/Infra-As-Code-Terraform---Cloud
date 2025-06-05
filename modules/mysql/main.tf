
resource "azurerm_mysql_flexible_server" "mysql" {
  name                   = "mysql-${var.environment}-wp"
  resource_group_name    = var.resource_group_name
  location               = var.location
  administrator_login    = "wpadmin"
  administrator_password = "StrongPassword123!"
  sku_name               = "B_Standard_B1ms"
  version                = "5.7"
  storage_mb             = 32768
  zone                   = "1"
  delegated_subnet_id    = null
  public_network_access_enabled = true
}

output "mysql_fqdn" {
  value = azurerm_mysql_flexible_server.mysql.fqdn
}
