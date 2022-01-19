# --- root/main.tf ---

module "networking" {
  source       = "./networking"
  vpc_cidr     = "10.20.0.0/16"
  public_cidrs = ["10.20.1.0/24", "10.20.2.0/24"]
}

module "compute" {
  source        = "./compute"
  web_sg        = module.networking.web_sg
  public_subnet = module.networking.public_subnet
}