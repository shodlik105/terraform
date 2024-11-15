terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

resource "docker_image" "postgres" {
  name = "postgres:latest"
}

resource "docker_container" "postgres" {
  name  = "postgres-container"
  image = docker_image.postgres.repo_digest

  env = [
    "POSTGRES_USER=shodlik",
    "POSTGRES_PASSWORD=9797",
    "POSTGRES_DB=shodlik_db"
  ]

  ports {
    internal = 5432
    external = 5432
  }
}
