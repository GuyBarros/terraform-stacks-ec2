output "vpc_id" {
  description = "The ID of the VPC created."

  value = module.vpc.vpc_id
}

output "private_subnet_ids" {
  description = "Set of IDs of all of the private subnets."
  value       = toset(module.vpc.private_subnets)
}

output "public_subnet_ids" {
  description = "Set of IDs of all of the public subnets."
  value       = toset(module.vpc.public_subnets)
}
