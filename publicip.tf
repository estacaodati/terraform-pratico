#Creating the public ip which will be used for @LoadBalancer
resource "azurerm_public_ip" "pip-lbe-test-eastus-001" {
  name                = "pip-lbe-test-eastus-001"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_public_ip" "pip-vmcasclab01-test-eastus-001" {
  name                = "pip-vmcasclab01-test-eastus-001"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_public_ip" "pip-vmcasclab02-test-eastus-001" {
  name                = "pip-vmcasclab02-test-eastus-001"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"
  sku                 = "Standard"
}