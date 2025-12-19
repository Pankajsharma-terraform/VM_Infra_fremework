data "azurerm_subnet" "bastion-host-subnetdata" {
  for_each = var.jump-host
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}
data "azurerm_public_ip" "bastion-host-pipdata" {
  for_each = var.jump-host
  name                = each.value.bastion_pip_name
  resource_group_name = each.value.resource_group_name
}