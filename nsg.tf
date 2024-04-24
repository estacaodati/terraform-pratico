#Creating the NSG which will be used for @LPublicIp
resource "azurerm_network_security_group" "nsg-weballow-001" {
  name                = "nsg-weballow-001"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

  security_rule {
    name                       = "rdpallow"
    priority                   = "1000"
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "webinallow"
    priority                   = "2000"
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "weboutallow"
    priority                   = "2001"
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

#Connecting NSG into the Subnet
resource "azurerm_subnet_network_security_group_association" "nsg-weballow-001-ga" {
  subnet_id                 = azurerm_subnet.snet-test-eastus-001.id
  network_security_group_id = azurerm_network_security_group.nsg-weballow-001.id
}