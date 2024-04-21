provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

resource "aws_ecr_repository" "app_ecr_repo" {
  name                 = "app-repo-terraform"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecs_cluster" "my_cluster" {
  name = "app-cluster-terraform" # Name your cluster here
}
