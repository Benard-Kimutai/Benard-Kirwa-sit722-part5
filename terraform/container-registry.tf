#
# Creates a container registry named part5acr on Azure.
#
resource "azurerm_container_registry" "container_registry" {
  name                = "part5acr"
  resource_group_name = azurerm_resource_group.part5.name  # Reference the new resource group
  location            = azurerm_resource_group.part5.location  # Use the same location
  admin_enabled       = true
  sku                 = "Basic"
}

output "registry_hostname" {
  value = azurerm_container_registry.container_registry.login_server
}

output "registry_un" {
  value = azurerm_container_registry.container_registry.admin_username
}

output "registry_pw" {
  value = azurerm_container_registry.container_registry.admin_password
  sensitive = true
}
