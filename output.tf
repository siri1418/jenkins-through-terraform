output "vm_public_ip" {
  value = azurerm_linux_virtual_machine.azvm.public_ip_address
}
