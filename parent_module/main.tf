module "resource_group" {
  source = "../child_module/azurerm_resource_group"
  rgs    = var.rgs
}

module "vnet" {
  depends_on = [module.resource_group]
  source     = "../child_module/azurerm_virtual_network"
  vnets      = var.vnets
}

module "subnet" {
  depends_on = [module.resource_group, module.vnet]
  source     = "../child_module/azurerm_subnet"
  subnets    = var.subnets
}
