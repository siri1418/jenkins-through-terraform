variable "rg_info" {
  type = object({
    rg_name  = string
    location = string
  })
  default = {
    location = "East Asia"
    rg_name  = "rg"
  }
}
variable "vnet_info" {
  type = object({
    vnet_name     = string
    address_space = list(string)

  })
  default = {
    address_space = ["192.168.0.0/16"]
    vnet_name     = "azvnet"
  }
}
variable "subnet_info" {
  type = object({
    subnet_name      = string
    address_prefixes = list(string)
  })
  default = {
    address_prefixes = ["192.168.0.0/24"]
    subnet_name      = "web1"
  }
}

variable "vm_nic_info" {
  type = object({
    nic_name             = string
    nic_ip_name          = string
    nic_ip_allocation    = string
    public_ip_name       = string
    public_ip_allocation = string
  })
  default = {
    nic_name             = "websrvnic"
    nic_ip_name          = "websrvip"
    nic_ip_allocation    = "Dynamic"
    public_ip_name       = "webip"
    public_ip_allocation = "Dynamic"
  }
}
variable "vm_info" {
  type = object({
    vm_name     = string
    vm_size     = string
    vm_username = string
    vm_password = string
  })
  default = {
    vm_name     = "redvm"
    vm_size     = "Standard_B1s"
    vm_username = "aseeuser"
    vm_password = "Asee@1234567"
  }
}
variable "image_info" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  default = {
    offer     = "0001-com-ubuntu-server-focal"
    publisher = "Canonical"
    sku       = "20_04-lts"
    version   = "latest"
  }
}
variable "rollout_version" {
  type    = string
  default = "0.0.0.2"

}
