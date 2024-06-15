jio_vm = {
     snetfruntend = {
        name_snet = "AzureBastionSubnet"
        name_rg = "jio-rg"
        name_vnet = "jio-vnet"
        address_prefixes     = ["10.0.1.0/24"]
     }

     snetbackend = {
        name_snet = "jio-snetbackend"
        name_rg = "jio-rg"
        name_vnet = "jio-vnet"
        address_prefixes     = ["10.0.2.0/24"]
     }
     snetdatabase = {
        name_snet = "jio-snetdatabase"
        name_rg = "jio-rg"
        name_vnet = "jio-vnet"
        address_prefixes     = ["10.0.3.0/24"]
     } 
}