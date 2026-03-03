##############################################
# Global Variables
##############################################

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-2"
}

variable "project_name" {
  description = "Project name for resource naming"
  type        = string
  default     = "ecommerce"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "production"
}

##############################################
# Networking
##############################################

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability zones"
  type        = list(string)
  default     = ["eu-west-2a", "eu-west-2b"]
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDRs"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDRs (for RDS)"
  type        = list(string)
  default     = ["10.0.10.0/24", "10.0.11.0/24"]
}

##############################################
# RDS
##############################################

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "eshop_db"
}

variable "db_username" {
  description = "Database master username"
  type        = string
  default     = "admin"
  sensitive   = true
}

##############################################
# ECS
##############################################

variable "backend_container_port" {
  description = "Port the Spring Boot container listens on"
  type        = number
  default     = 8080
}

variable "backend_cpu" {
  description = "Fargate task CPU units"
  type        = number
  default     = 512
}

variable "backend_memory" {
  description = "Fargate task memory (MiB)"
  type        = number
  default     = 1024
}

variable "backend_desired_count" {
  description = "Number of ECS tasks"
  type        = number
  default     = 1
}

##############################################
# GitHub OIDC
##############################################

variable "github_org" {
  description = "GitHub username or organization"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
}
