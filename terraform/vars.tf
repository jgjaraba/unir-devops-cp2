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

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_config_raw
  description = "Configuration file to connect to Kubernetes cluster"
  sensitive = true
}

output "acr_admin_username" {
  value = azurerm_container_registry.acr.admin_username
  description = "ACR admin username to log in"
  sensitive = true
}

output "acr_admin_password" {
  value = azurerm_container_registry.acr.admin_password
  description = "ACR admin password to log in"
  sensitive = true
}

output "vm_public_ip" {
  value = azurerm_public_ip.pip.ip_address
  description = "Linux VM public ip"
}

