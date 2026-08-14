rg_main = {
  hub = {
    name     = "RG-HUB-Sujay"
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

}
subnet_main = {
  azure-Firewall = {
    name                 = "AzureFirewallSubnet"
    resource_group_name  = "RG-HUB-Sujay"
    virtual_network_name = "vnet-hub"
    address_prefixes     = ["10.0.1.0/24"]
  }
}