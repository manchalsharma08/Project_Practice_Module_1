
## NIC
resource "azurerm_network_interface" "nic" {
    for_each = var.jio_vm
  name                = each.value.name_nic
  location            = each.value.location
  resource_group_name = each.value.name_rg

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.datasnet[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}

### VM_linux 
resource "azurerm_linux_virtual_machine" "vm" {
  for_each = var.jio_vm
  name                = each.value.name_vm
  resource_group_name = each.value.name_rg
  location            = each.value.location
  size                = "Standard_B2s"
  admin_username      = each.value.vm_admin_username
  admin_password = each.value.vm_admin_password
disable_password_authentication = "false"
  network_interface_ids = [
    azurerm_network_interface.nic[each.key].id
  ]

  
  

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}