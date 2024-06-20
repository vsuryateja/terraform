provider "azurerm" {
  features {}
}

# resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source              = "./modules/network"
  resource_group_name = var.resource_group_name
  location            = var.location
  network_name        = var.network_name
  subnet_name         = var.subnet_name
  address_space       = var.address_space
  subnet_address      = var.subnet_address
}

module "vm" {
  for_each             = toset(var.vm_names)
  source               = "./modules/vm"
  resource_group_name  = var.resource_group_name
  location             = var.location
  subnet_id            = module.network.subnet_id
  vm_name              = each.value
  admin_username       = var.admin_username
  ssh_public_key_path  = var.ssh_public_key_path
  publisher            = var.publisher
  offer                = var.offer
  sku                  = var.sku
  image_version        = var.image_version
  storage_account_type = var.storage_account_type
  vm_size              = var.vm_size
}

module "storage" {
  source              = "./modules/storage"
  resource_group_name = var.resource_group_name
  location            = var.location
  #storage_account_name = var.storage_account_name
}

module "aks" {
  source              = "./modules/aks"
  cluster_name        = var.cluster_name
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  vm_size             = var.cluster_vm_size
  tags                = var.tags
  resource_group_name = var.resource_group_name
  location            = var.location
}