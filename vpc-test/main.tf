module "roboshop" {
  source = "../roboshop-aws-vpc"
  project_name = var.project_name
  environment = var.environment
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags

#   public subnet
  public_subnets_cidr = var.public_subnets_cidr
  public_subnets_tags = var.public_subnets_tags
}
