resource_group = {
  rg1 = {
    name     = "rg-centralindia"
    location = "centralindia"
  }
}

virtual_network = {
  vnet1 = {
    name                = "vnet-centralindia"
    location            = "centralindia"
    resource_group_name = "rg-centralindia"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    name                 = "sunbet_frontend"
    resource_group_name  = "rg-centralindia"
    virtual_network_name = "vnet-centralindia"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "sunbet_backend"
    resource_group_name  = "rg-centralindia"
    virtual_network_name = "vnet-centralindia"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

public_ip = {
  pip01 = {
    name                = "pip_frontendvm"
    location            = "centralindia"
    resource_group_name = "rg-centralindia"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
  # pip02 = {
  #   name                = "pip-backendvm"
  #   location            = "centralindia"
  #   resource_group_name = "rg-centralindia"
  #   allocation_method   = "Static"
  #   sku                 = "Standard"
  # }
}

virtual_machine = {
  vm01 = {
    nic_name             = "nic-frontendvm"
    location             = "centralindia"
    subnet_name          = "sunbet_frontend"
    virtual_network_name = "vnet-centralindia"
    resource_group_name  = "rg-centralindia"
    pip_name             = "pip_frontendvm"
    vm_name              = "vm-frontend"
    vm_size              = "Standard_D4_v5"
    admin_username       = "devopsadmin"
    admin_password       = "Qwer!@#ty123"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-jammy"
    sku                  = "22_04-lts"
    version              = "latest"
  }
  vm02 = {
    nic_name             = "nic-frontendvm"
    location             = "centralindia"
    subnet_name          = "sunbet_frontend"
    virtual_network_name = "vnet-centralindia"
    resource_group_name  = "rg-centralindia"
    pip_name             = "pip_frontendvm"
    vm_name              = "vm-frontend"
    vm_size              = "Standard_D4_v5"
    admin_username       = "devopsadmin"
    admin_password       = "Qwer!@#ty123"
    publisher            = "Canonical"
    offer                = "0001-com-ubuntu-server-jammy"
    sku                  = "22_04-lts"
    version              = "latest"
  }
  # vm02 = {
  #   nic_name             = "nic-backendvm"
  #   location             = "centralindia"
  #   subnet_name          = "sunbet_backend"
  #   virtual_network_name = "vnet-centralindia"
  #   resource_group_name  = "rg-centralindia"
  #   pip_name             = "pip-backendvm"
  #   vm_name              = "vm-backend"
  #   vm_size              = "Standard_D4_v5"
  #   admin_username       = "devopsadmin"
  #   admin_password       = "Qwer!@#ty123 
  #   publisher            = "Canonical"
  #   offer                = "0001-com-ubuntu-server-jammy"
  #   sku                  = "22_04-lts"
  #   version              = "latest"
  # }
}