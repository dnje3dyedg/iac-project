module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source    = "./modules/ec2"
  subnet_id = module.vpc.subnet_ids[0]
  vpc_id    = module.vpc.vpc_id
}

module "rds" {
  source     = "./modules/rds"
  subnet_ids = module.vpc.subnet_ids
}