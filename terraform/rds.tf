resource "aws_rds_cluster" "medusa_db" {
  cluster_identifier = "medusa-db-cluster"
  engine             = "aurora-postgresql"
  engine_version     = "15.3"
  database_name      = "medusadb"
  master_username    = "medusa_admin"
  master_password    = "MedusaSecurePass123!" # Use AWS Secrets Manager in production
  skip_final_snapshot = true

  vpc_security_group_ids = [aws_security_group.db_sg.id]
  db_subnet_group_name   = aws_db_subnet_group.medusa_subnet.name
}

resource "aws_db_subnet_group" "medusa_subnet" {
  name       = "medusa-db-subnet-group"
  subnet_ids = aws_subnet.private[*].id
}
