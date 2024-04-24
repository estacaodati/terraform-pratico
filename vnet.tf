#Creating the virtual network which will be used for LB and VMs
resource "azurerm_virtual_network" "vnet-test-eastus-001" {
  name                = "vnet-test-eastus-001"
  address_space       = ["10.1.0.0/16"]
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
}