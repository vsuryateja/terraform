variable "resource_group_name" {
}

variable "location" {
}

variable "subnet_id" {
}

variable "admin_username" {
  description = "The admin username for the VM"
  type        = string
}

variable "ssh_public_key_path" {
  description = "The path to the SSH public key"
  type        = string
}

variable "vm_name" {
    description = "name of vm"
    type = string
}

variable "vm_size" {
  description = "vm_size"
  type = string
}

variable "storage_account_type" {
  description = "Storage account type"
  type = string
}

variable "publisher" {}
variable "offer" {}
variable "sku" {}
variable "image_version" {}

