variable "rg_name" {
  type = string
  default = "rg_sb_eastus_40287_1_171076047662"
  description = "Nome do resource group"
}

variable "region" {
  type = string    
  default = "East US"
  description = "Região do resource group"
}

variable "vm_properties" {
  description = "Parametros usados na criação da VM"
  type = map(any)
  default = {
    vmcasclabtest01 = {
      name = "vmcasclabtest01"
      size = "standard_B2ms"
      admin_username = "dcascaes"
      admin_password = "Dcascaes666"
      os_disk_name   = "stcasclab001"
      storage_type   = "Standard_LRS"
    },
    vmcasclabtest02 = {
      name = "vmcasclabtest02"
      size = "standard_B2ms"
      admin_username = "dcascaes"
      admin_password = "Dcascaes666"
      os_disk_name   = "stcasclab002"
      storage_type   = "Standard_LRS"    
    }    
  }
}

variable "network_params" {
  description = "Parametros das Vnet"
  type = map(any)
  default = {
    vnet-test-eastus-001 = {
      vnet_cidr = "10.1.0.0/16"
    }
  }
}

variable "subnet_params" {
  description = "Parametros das Subnets"
  type = map(any)
  default = {
    sub01= {
      name             = "GatewaySubnet"
      address_prefixes = "10.1.0.0/27"
    }
    sub02= {
      name             = "snet-test-eastus-001"
      address_prefixes = "10.1.1.0/24"
    }
  }
}
