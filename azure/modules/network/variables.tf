variable "resource_group_name" {
}

variable "location" {
}
variable "address_space" {
  description = "vnet address range"
  type = list(string)
}
variable "subnet_address" {
  description = "subnet address"
  type = list(string)
}
variable "network_name" {
  default =  "vnet1"
}
variable "subnet_name" {
  default = "subnet1"
}
