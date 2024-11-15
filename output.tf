output "container_id" {
    description = "container_ID"
  value = docker_container.postgres.id
}

output "container_hostname" {
    description = "container_HOSTNAME"
    value = docker_container.postgres.hostname
  
}
output "container_id_nginx" {
    description = "container_ID"
  value = docker_container.nginx.id
}

output "container_hostname_nginx" {
    description = "container_HOSTNAME"
    value = docker_container.nginx.hostname
  
}