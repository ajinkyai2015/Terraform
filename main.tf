module "ec2_instances" {
  source = "./modules/ec2"
  
  instance_count = 3
  instance_type  = var.instance_type
  ami_id         = var.ami_id
  key_name       = var.key_name
  vpc_id         = var.vpc_id
  subnet_id      = var.subnet_id
}

module "security_group" {
  source = "./modules/security_group"
  
  vpc_id = var.vpc_id
}

output "ec2_instance_ids" {
  value = module.ec2_instances.instance_ids
}

output "security_group_id" {
  value = module.security_group.security_group_id
}
