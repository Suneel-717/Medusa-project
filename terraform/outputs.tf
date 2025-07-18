output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnets" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "alb_dns_name" {
  description = "DNS of the Application Load Balancer"
  value       = aws_lb.medusa_alb.dns_name
}

output "ecs_cluster_name" {
  description = "ECS Cluster Name"
  value       = aws_ecs_cluster.medusa_cluster.name
}

output "ecs_service_name" {
  description = "ECS Service Name"
  value       = aws_ecs_service.medusa_service.name
}

output "db_endpoint" {
  description = "Aurora PostgreSQL Endpoint"
  value       = aws_rds_cluster.medusa_db.endpoint
}
