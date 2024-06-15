data "azurerm_subnet" "AzureBastionSubnet" {
    for_each = var.jio_vm
  name                 = each.value.name_data
  virtual_network_name = each.value.name_vnet
  resource_group_name  = each.value.name_rg
}