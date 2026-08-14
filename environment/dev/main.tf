module "rgs" {
  source = "../../modules/rg"

  rg_child = var.rg_main
}

module "vnets" {
  depends_on = [module.rgs]
  source     = "../../modules/vnet"

  vnet-child = var.vnet_main

}
module "subnets" {
  depends_on = [module.vnets]
  source     = "../../modules/subnet"

  subnet-child = var.subnet_main
}
