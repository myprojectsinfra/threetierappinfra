resource_group_name      = "todoappinfra-rg"
resource_group_location  = "northeurope"
virtual_network_name     = "todo_vnet"
virtual_network_location = "northeurope"
address_space            = ["192.168.0.0/16"]
subnet_config = {
  "frontend" = {
    subnet_name      = "subnet_frontend"
    address_prefixes = ["192.168.1.0/24"]
  }
  "backend" = {
    subnet_name      = "subnet_backend"
    address_prefixes = ["192.168.2.0/24"]
  }

}
public_ip_config = {
  "frontend" = {
    public_ip_name = "pip-frontend"

  }
  "backend" = {
    public_ip_name = "pip-backend"

  }
}
nic_config = {
  "frontend" = {
    nic_name    = "nic-frontend"
    subnet_name = "subnet_frontend"
    pip_name    = "pip-frontend"
  }
  "backend" = {
    nic_name    = "nic-backend"
    subnet_name = "subnet_backend"
    pip_name    = "pip-backend"
  }
}
network_interface_location = "northeurope"

vm_config = {
  "frontend" = {
    nic_name       = "nic-frontend"
    admin_username = "frontendAdmin"
    admin_password = "AnkitKumar@123"
    publisher      = "Canonical"
    offer          = "0001-com-ubuntu-server-jammy"
    sku            = "22_04-lts"
    custom_data    = "frontend.sh"
  }
  "backend" = {
    nic_name       = "nic-backend"
    admin_username = "backendAdmin"
    admin_password = "backend#1Pass"
    publisher      = "Canonical"
    offer          = "0001-com-ubuntu-server-focal"
    sku            = "20_04-lts"
    custom_data    = "backend.sh"


  }
}
virtual_machine_location = "northeurope"

nsg_config = {
  "nsgfrontend1" = {
    nic_name = "nic-frontend"
    nsg_name = "nsg-frontend"
  }
  "nsgbackend" = {
    nic_name = "nic-backend"
    nsg_name = "nsg-backend"
  }
}