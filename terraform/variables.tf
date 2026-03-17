variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "Azure Resource Group name"
  type        = string
  default     = "rg-devops68-discount"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "Southeast Asia"
}

variable "vm_admin_username" {
  description = "Admin username for VM"
  type        = string
  default     = "azureuser"
}

variable "vm_admin_password" {
  description = "Admin password for VM"
  type        = string
  sensitive   = true
}

variable "github_repo_url" {
  description = "Your forked GitHub repository URL"
  type        = string
}

variable "app_port" {
  description = "Node.js app port"
  type        = number
  default     = 3022
}