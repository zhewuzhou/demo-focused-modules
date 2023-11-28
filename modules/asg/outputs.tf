#pay attention for the outputs, don't create dependencies implicitly cause performance and maintainance issues

output "asg_name" {
  value       = aws_autoscaling_group.demo.name
  description = "name of auto scalling group"
}

output "instance_security_group_id" {
  value       = aws_security_group.instance.id
  description = "security group id"
}
