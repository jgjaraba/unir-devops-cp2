variable "location" {
  type = string
  description = "Azure region where infrastructure will be created"
  default = "Spain Central"
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

output "private_ssh_key" {
  value = tls_private_key.ssh_key.private_key_openssh
  sensitive = true
}
output "kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive = true
}

