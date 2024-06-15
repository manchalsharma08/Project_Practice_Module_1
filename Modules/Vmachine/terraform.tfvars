jio_vm = {

    vm1 = {
        name_nic = "jio-nic"
        location = "eastus"
        name_rg = "jio-rg"
        name_vm = "jio1-vm"
        vm_admin_username = "jio1-vm"
        vm_admin_password = "jio1@123"
        name_vnet = "jio-vnet"
name_data = "jio-snetbackend"

    }

    vm2 = {
        name_nic = "jio2-nic"
        location = "eastus"
        name_rg = "jio-rg"
        name_vm = "jio2-vm"
        vm_admin_username = "jio2-vm"
        vm_admin_password = "jio2@123"
        name_data = "jio-snetdatabase"
        name_vnet = "jio-vnet"
    }
}