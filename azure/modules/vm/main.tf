# Network Interface
resource "azurerm_network_interface" "nic" {
  name                = "${var.vm_name}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                  = var.vm_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  network_interface_ids = [azurerm_network_interface.nic.id]
  size               = var.vm_size
  admin_username        = var.admin_username

  admin_ssh_key {
    username   = var.admin_username
    public_key = file("${var.ssh_public_key_path}")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.storage_account_type
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.offer
    version   = var.image_version
  }

}
output "vm_name" {
  value = azurerm_linux_virtual_machine.vm.name
}
output "nic_name" {
  value = azurerm_network_interface.nic.name
}