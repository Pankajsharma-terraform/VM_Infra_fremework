resource "azurerm_bastion_host" "bastion-host" {
    for_each = var.jump-host
  name                = each.value.bation_host_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  ip_configuration {
    
    name                 = each.value.ip_configuration_name
    subnet_id            = data.azurerm_subnet.bastion-host-subnetdata[each.key].id
    public_ip_address_id = data.azurerm_public_ip.bastion-host-pipdata[each.key].id
  }
}