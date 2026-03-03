##############################################
# Generate Random DB Password
##############################################

resource "random_password" "db" {
  length  = 20
  special = false
}

##############################################
# Store DB Password in SSM Parameter Store
##############################################

resource "aws_ssm_parameter" "db_password" {
  name  = "/${var.project_name}/db/password"
  type  = "SecureString"
  value = random_password.db.result

  tags = { Name = "${var.project_name}-db-password" }
}

resource "aws_ssm_parameter" "db_endpoint" {
  name  = "/${var.project_name}/db/endpoint"
  type  = "String"
  value = aws_db_instance.mysql.endpoint

  tags = { Name = "${var.project_name}-db-endpoint" }
}

##############################################
# RDS Subnet Group
##############################################

resource "aws_db_subnet_group" "main" {
  name       = "${var.project_name}-db-subnet-group"
  subnet_ids = aws_subnet.private[*].id

  tags = { Name = "${var.project_name}-db-subnet-group" }
}

##############################################
# RDS Parameter Group
##############################################

resource "aws_db_parameter_group" "mysql" {
  name   = "${var.project_name}-mysql-params"
  family = "mysql8.0"

  parameter {
    name  = "log_bin_trust_function_creators"
    value = "0"
  }

  tags = { Name = "${var.project_name}-mysql-params" }
}

##############################################
# RDS MySQL Instance
##############################################

resource "aws_db_instance" "mysql" {
  identifier     = "${var.project_name}-mysql"
  engine         = "mysql"
  engine_version = "8.0"
  instance_class = "db.t3.micro"

  db_name  = var.db_name
  username = var.db_username
  password = random_password.db.result

  allocated_storage     = 20
  max_allocated_storage = 50
  storage_type          = "gp3"
  storage_encrypted     = true

  db_subnet_group_name   = aws_db_subnet_group.main.name
  vpc_security_group_ids = [aws_security_group.rds.id]
  multi_az               = false
  publicly_accessible    = false

  parameter_group_name    = aws_db_parameter_group.mysql.name
  port                    = 3306
  backup_retention_period = 7
  skip_final_snapshot     = true
  deletion_protection     = false

  tags = { Name = "${var.project_name}-mysql" }
}
