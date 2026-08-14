rg_main = {
  hub = {
    name     = "RG-HUB-Sujay"
    location = "centralindia"
  }
  spoke = {
    name     = "RG-Spoke-Sujay"
    location = "centralindia"
  }
  shared = {
    name     = "RG-SHARED-Sujay"
    location = "centralindia"
  }

  shared1 = {
    name     = "RG-SHARED-Sujay1"
    location = "centralindia"
  }

}
vnet_main = {
  hub = {
    name                = "vnet-hub"
    location            = "centralindia"
    resource_group_name = "RG-HUB-Sujay"
    address_space       = ["10.0.0.0/16"]
  }
  spoke = {
    name                = "vnet-spoke"
    location            = "centralindia"
    resource_group_name = "RG-Spoke-Sujay"
    address_space       = ["10.1.0.0/16"]
  }
}
subnet_main = {
  azure-Firewall = {
    name                 = "AzureFirewallSubnet"
    resource_group_name  = "RG-HUB-Sujay"
    virtual_network_name = "vnet-hub"
    address_prefixes     = ["10.0.1.0/24"]
  }
  azure-AppSubnet = {
    name                 = "AppSubnet"
    resource_group_name  = "RG-Spoke-Sujay"
    virtual_network_name = "vnet-spoke"
    address_prefixes     = ["10.1.1.0/24"]
  }
  azure-DBSubnet = {
    name                 = "DBSubnet"
    resource_group_name  = "RG-Spoke-Sujay"
    virtual_network_name = "vnet-spoke"
    address_prefixes     = ["10.1.2.0/24"]
  }
}