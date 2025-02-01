resource "docker_container" "this" {
  name  = var.docker_container_name
  image = var.docker_image
  command = ["sleep", "infinity"]
}