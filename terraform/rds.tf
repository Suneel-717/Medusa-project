resource "aws_db_subnet_group" "medusa_subnet" {
  name       = "medusa-db-subnet"
  subnet_ids = aws_subnet.public[*].id
}

resource "aws_rds_cluster" "medusa_db" {
  cluster_identifier      = "medusa-db"
  engine                  = "aurora-postgresql"
  master_username         = admin   # Use medusauser
  master_password         = admin  # You can keep this as "admin" (but consider stronger passwords)
  database_name           = medusadb
  db_subnet_group_name    = aws_db_subnet_group.medusa_subnet.name
  vpc_security_group_ids  = [aws_security_group.ecs_sg.id]
}
