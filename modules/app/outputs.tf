output "instance_security_group_id" {
  value       = module.asg.instance_security_group_id
  description = "sg id"
}

output "alb_dns_name" {
  value       = module.alb.alb_dns_name
  description = "name of alb"
}

output "asg_name" {
  value       = module.asg.asg_name
  description = "name of asg"
}
