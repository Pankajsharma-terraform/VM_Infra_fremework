variable "jump-host" {
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
