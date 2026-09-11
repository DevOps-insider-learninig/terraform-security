module "resource_group" {
  source = "../../modules/azurerm_resource_group"

  resource_group = var.resource_group
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_virtual_network"

  virtual_network = var.virtual_network
}

module "subnets" {
  depends_on = [module.virtual_network]
  source     = "../../modules/azurerm_subnet"
  subnets    = var.subnets
}

module "public_ip" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_public_ip"
  public_ip  = var.public_ip
}

module "virtual_machine" {
  depends_on      = [module.public_ip, module.subnets]
  source          = "../../modules/azurerm_virtual_machine"
  virtual_machine = var.virtual_machine
}