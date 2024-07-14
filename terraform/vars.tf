variable "location" {
  type = string
  description = "Azure region where infrastructure will be created"
  default = "West Europe"
}

variable "vm_size" {
  type = string
  description = "VM size"
  default = "Standard_D1_v2"
}

variable "aks_vm_size" {
  type = string
  description = "AKS VM size"
  default = "Standard_D2_v2"
}
