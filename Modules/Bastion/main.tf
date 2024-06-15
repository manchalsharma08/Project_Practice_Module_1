resource "azurerm_bastion_host" "bastion" {
    for_each = var.jio_vm
  name                = each.value.name_bastion
  location            = each.value.location
  resource_group_name = each.value.name_rg

  ip_configuration {
    name                 = "AzureBastionSubnet"
    subnet_id            = data.azurerm_subnet.AzureBastionSubnet[each.key].id
    public_ip_address_id = azurerm_public_ip.pip[each.key].id
  }
}   
resource "azurerm_public_ip" "pip" {
    for_each = var.jio_vm
  name                = each.value.name_pip
  location            = each.value.location
  resource_group_name = each.value.name_rg
  allocation_method   = "Static"
  sku                 = "Standard"
}