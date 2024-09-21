#
# Creates a resource group named part5 in my Azure account.
#
resource "azurerm_resource_group" "part5" {
  name     = "part5"
  location = "australiaeast"  
}
