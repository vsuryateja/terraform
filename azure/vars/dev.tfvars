resource_group_name  = "DEV_RG"
location             = "East US"
address_space        = ["10.0.0.0/22"]
subnet_address       = ["10.0.2.0/23"]
vm_size              = "Standard_DS1_v2"
storage_account_type = "Standard_LRS"
publisher            = "Canonical"
offer                = "0001-com-ubuntu-server-jammy"
sku                  = "22_04-lts"
image_version        = "latest"
admin_username       = "idontknow"
ssh_public_key_path  = "C:\\Users\\91966\\.ssh\\id_rsa.pub"
network_name         = "vnet1"
subnet_name          = "subnet1"
vm_names            = ["linuxjump01"]
dns_prefix = "DevAKS"
node_count = 1
cluster_vm_size = "Standard_DS2_v2"