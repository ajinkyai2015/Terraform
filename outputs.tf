output "ec2_instance_ids" {
  description = "The IDs of the created EC2 instances"
  value       = module.ec2_instances.instance_ids
}

output "security_group_id" {
  description = "The ID of the created security group"
  value       = module.security_group.security_group_id
}
