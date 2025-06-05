
resource "azurerm_container_registry" "acr" {
  name                = "acr${var.environment}wp"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = true
}

output "login_server" {
  value = azurerm_container_registry.acr.login_server
}
