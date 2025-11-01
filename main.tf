module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.security_group.sg_id
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "${var.project_name}-bucket"
}

