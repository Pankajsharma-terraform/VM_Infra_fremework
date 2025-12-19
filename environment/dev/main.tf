module "rgmod" {
    source = "../../modules/azurerm_rescource_group"
    rgs = var.rg_dev
}

module "netmod" {
    depends_on = [ module.rgmod ]
    source = "../../modules/azurerm_networking"
    vnet = var.net_dev
}

module "pipmod" {
    depends_on = [ module.rgmod ]
    source = "../../modules/azurerm_public_ip"
    pip = var.pip_dev
}

module "nsgmod" {
    depends_on = [ module.rgmod ]
    source = "../../modules/azurerm_nsg"
    nsg = var.nsg_dev
}

module "vmmod" {
    depends_on = [ module.netmod ]
    source = "../../modules/azurerm_compute"
    vms = var.vm_dev
}

module "mssqlservermod" {
    depends_on = [ module.rgmod ]
    source = "../../modules/azurerm_mssql_server"
    mssql_server = var.mssql_server_dev
}

module "mssqldbmod" {
    depends_on = [ module.rgmod, module.mssqlservermod ]
  source = "../../modules/azurerm_mssql_database"
  mssql_db = var.mssql_db_dev
}

module "baistianmod" {
    depends_on = [ module.rgmod, module.netmod, module.pipmod ]
    source = "../../modules/azurerm_bastion"
    jump-host = var.bastion_dev

}
  


# module "keyvault" {
#     source = "../../modules/azurerm_keyvault"
#     kv = var.kv_dev
# }

# module "keyvault_secret" {
#     source = "../../modules/azurerm_keyvault_secrets"
#     kv_secret = var.kv_secret_dev
# }
