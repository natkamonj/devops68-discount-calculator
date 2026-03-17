output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "public_ip" {
  value = azurerm_public_ip.pip.ip_address
}

output "app_url" {
  value = "http://${azurerm_public_ip.pip.ip_address}:${var.app_port}/calculate?price=100&discount=20"
}