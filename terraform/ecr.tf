resource "aws_ecr_repository" "medusa_repo" {
  name = "medusa-backend"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "medusa-backend"
  }
}
