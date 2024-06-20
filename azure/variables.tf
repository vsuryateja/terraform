// resource group variables
variable "resource_group_name" {
  description = "resource group name"
  type        = string
}

variable "location" {
  description = "location for the resources"
  type        = string
}
// Network variables 
variable "network_name" {}
variable "subnet_name" {}
variable "address_space" {}
variable "subnet_address" {}


// VM variables
variable "vm_names" {
  description = "name of vm"
  type        = list(string)
}

variable "admin_username" {
  description = "The admin username for the VM"
  type        = string
}

variable "ssh_public_key_path" {
  description = "The path to the SSH public key"
  type        = string
}

variable "publisher" {}
variable "offer" {}
variable "sku" {}
variable "image_version" {}
variable "storage_account_type" {}
variable "vm_size" {}

//aks variable
variable "cluster_name" {
  default = "Dev_AKS"
}
variable "dns_prefix" {
  default = "Dev_AKS"
}
variable "node_count" {
}
variable "cluster_vm_size" {}
variable "tags" {
  default = {
    "ENV" = "Dev"
  }
}