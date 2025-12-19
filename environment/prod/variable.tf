variable "rg_prod" {
    type = map(object({
    name        = string
    location    = string
    managed_by  = optional(string)
    tags = optional(map(string))
  }))
}

variable "net_prod" {
    type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
    subnets = optional(map(object({
      name             = string
      address_prefixes = list(string)
    })), {})
  }))
}

variable "pip_prod" {
    type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))
}

variable "nsg_prod" {
    type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
}

variable "vm_prod" {
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

variable "mssql_server_prod" {
    type = map(object({
    name                         = string
    resource_group_name          = string
    location                     = string
    version                      = string
    administrator_login          = optional(string)
    administrator_login_password = optional(string)
    minimum_tls_version          = optional(string)
    tags                         = optional(map(string))
  }))
}

variable "mssql_db_prod" {
    type = map(object({
    name                = string
    collation           = optional(string)
    license_type        = optional(string)
    max_size_gb         = optional(number)
    sku_name            = optional(string)
    enclave_type        = optional(string)
    tags                = optional(map(string))
    server_name         = string
    resource_group_name = string
  }))
}

variable "bastion_prod" {
    type = map(object({
    bation_host_name      = string
    location              = string
    resource_group_name   = string
    ip_configuration_name = string
    subnet_name           = string
    virtual_network_name  = string
    bastion_pip_name      = string
  }))
}


# variable "kv_prod" {}

# variable "kv_secret_prod" {}
