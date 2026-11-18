module "networking" {
  source = "./modules/network"

  vpc_name       = var.vpc.name
  vpc_cidr_block = var.vpc.cidr_block
  vpc_tags       = var.vpc.tags
  subnets        = var.vpc.subnets

  enable_dns_hostnames = var.vpc.enable_dns_hostnames
  enable_dns_support   = var.vpc.enable_dns_support
}

