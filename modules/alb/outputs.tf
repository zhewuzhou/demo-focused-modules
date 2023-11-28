output "alb_security_group_id" {
  value       = aws_security_group.alb.id
  description = "security group id"
}

output "alb_dns_name" {
  value       = aws_lb.demo.dns_name
  description = "The domain name of the load balancer"
}

output "alb_http_listener_arn" {
  value       = aws_lb_listener.http.arn
  description = "listener arn"
}
