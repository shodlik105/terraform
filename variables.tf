variable "container_postgres_name" {
  description = "PostgreSQL konteynerining nomi"
  type        = string
  default     = "postgres-demo"
}

variable "image_postgres_name" {
  description = "PostgreSQL tasvirining nomi"
  type        = string
  default     = "postgres:latest"
}

variable "internal_postgres_port" {
  description = "internal_postgres_port"
  type = number
  default = 5432
}

variable "external_postgres_port" {
  description = "external_postgres_port"
  type = number
  default = 5432
}

variable "container_nginx_name" {
  description = "nginx konteynerining nomi"
  type        = string
  default     = "nginx-demo"
}

variable "image_nginx_name" {
  description = "nginx tasvirining nomi"
  type        = string
  default     = "nginx:latest"
}
variable "internal_nginx_port" {
  description = "internal_nginx_port"
  type = number
  default = 80
}

variable "external_nginx_port" {
  description = "external_nginx_port"
  type = number
  default = 8080
}