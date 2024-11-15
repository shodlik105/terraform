terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

resource "docker_image" "nginx" {
  name = var.image_nginx_name
}

resource "docker_container" "nginx" {
  name  = var.container_nginx_name
  image = docker_image.nginx.repo_digest

 ports {
    internal = var.internal_nginx_port
    external = var.external_nginx_port
  }
  depends_on = [docker_container.postgres]
  }

resource "docker_image" "postgres" {
  name = var.image_postgres_name
}

resource "docker_container" "postgres" {
  name  = var.container_postgres_name
  image = docker_image.postgres.repo_digest

  env = [
    "POSTGRES_USER=shodlik",
    "POSTGRES_PASSWORD=9797",
    "POSTGRES_DB=shodlik_db"
  ]

  ports {
    internal = var.internal_postgres_port
    external = var.external_postgres_port
  }
}
