provider "twc" {
  token = var.twc_token
}

provider "docker" {
  host = var.docker_host
}
