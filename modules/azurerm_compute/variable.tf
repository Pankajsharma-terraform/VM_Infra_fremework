variable "vms" {
  type = map(object({
    nic_name             = string
    location             = string
    resource_group_name  = string
    vm_name              = string
    size                 = string
    caching              = string
    storage_account_type = string
    subnet_name          = string
    virtual_network_name = string
    # pip_name             = string
    publisher            = string
    offer                = string
    sku                  = string
    version              = string
    vault_name           = string
    resource_group_name2 = string
  
  }))
}


