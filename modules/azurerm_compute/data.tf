data "azurerm_subnet" "datasubnet" {
  for_each = var.vms
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

# data "azurerm_public_ip" "datapip" {
#   for_each = var.vms
#   name                = each.value.pip_name
#   resource_group_name = each.value.resource_group_name
# }

data "azurerm_key_vault" "kvdata" {
  for_each = var.vms
  name = each.value.vault_name
  resource_group_name = each.value.resource_group_name2
}

data "azurerm_key_vault_secret" "vm_username" {
  for_each     = var.vms
  name         = "vmusername"
  key_vault_id = data.azurerm_key_vault.kvdata[each.key].id
}

data "azurerm_key_vault_secret" "vm_password" {
  for_each     = var.vms
  name         = "vmpassword"
  key_vault_id = data.azurerm_key_vault.kvdata[each.key].id
}