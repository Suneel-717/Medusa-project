resource "aws_ecr_repository" "my_repo" {
  name = "my_repo"
}
resource "aws_ecr_repository" "my_repo" {
  name = "my-repo"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "my-repo"
    Environment = "production"
  }
}
