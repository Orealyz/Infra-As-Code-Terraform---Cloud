
resource "azurerm_app_service_plan" "plan" {
  name                = "asp-${var.environment}-wp"
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "Linux"
  reserved            = true
  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "webapp" {
  name                = "webapp-${var.environment}-wp"
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.plan.id

  site_config {
    linux_fx_version = "DOCKER|${var.acr_login_server}/wordpress:latest"
  }

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    "MYSQL_HOST"                          = var.mysql_fqdn
    "MYSQL_USER"                          = "wpadmin"
    "MYSQL_PASSWORD"                      = "StrongPassword123!"
  }
}

output "webapp_url" {
  value = azurerm_app_service.webapp.default_site_hostname
}
