resource "azurerm_subnet" "bastion" {
    for_each = var.jio_vm
  name                 = each.value.name_snet
  resource_group_name  = each.value.name_rg
  virtual_network_name = each.value.name_vnet
  address_prefixes     = each.value.address_prefixes

}