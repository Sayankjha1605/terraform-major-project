module "vpc" {
  source = "./modules/vpc"
}

module "security_group" {
  source = "./modules/security-group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source         = "./modules/ec2"
  ami            = "ami-0f5ee92e2d63afc18"
  instance_type  = "t2.micro"
  sg_id          = module.security_group.sg_id
  subnet_id      = module.vpc.subnet_id
  key_name = "major-project-key"
}