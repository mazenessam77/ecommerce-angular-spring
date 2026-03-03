##############################################
# Outputs
##############################################

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "ecr_repository_url" {
  description = "ECR repository URL"
  value       = aws_ecr_repository.backend.repository_url
}

output "ecs_cluster_name" {
  description = "ECS cluster name"
  value       = aws_ecs_cluster.main.name
}

output "ecs_service_name" {
  description = "ECS service name"
  value       = aws_ecs_service.backend.name
}

output "s3_bucket_name" {
  description = "S3 bucket name"
  value       = aws_s3_bucket.frontend.id
}

output "frontend_website_url" {
  description = "Frontend website URL (S3 static hosting)"
  value       = "http://${aws_s3_bucket_website_configuration.frontend.website_endpoint}"
}

output "rds_endpoint" {
  description = "RDS endpoint"
  value       = aws_db_instance.mysql.endpoint
  sensitive   = true
}

output "db_password_ssm_param" {
  description = "SSM parameter name for DB password"
  value       = aws_ssm_parameter.db_password.name
}

output "github_backend_role_arn" {
  description = "IAM role ARN for GitHub backend deploy"
  value       = aws_iam_role.github_backend.arn
}

output "github_frontend_role_arn" {
  description = "IAM role ARN for GitHub frontend deploy"
  value       = aws_iam_role.github_frontend.arn
}
