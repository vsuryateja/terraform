variable "cluster_name" {
  description = "AKS Cluster name"
  type        = string
}
variable "resource_group_name" {
  description = "resource group name"
  type        = string
}

variable "location" {
  description = "location for the resources"
  type        = string
}
variable "dns_prefix" {
  default = "Dev_AKS"
  type    = string
}
variable "node_count" {}
variable "vm_size" {}
variable "tags" {
  type = map(string)
  default = {
    "ENV" = "Dev"
  }
}