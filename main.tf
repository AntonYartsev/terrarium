locals {
  environment = terraform.workspace
}

module "docker_container" {
  source         = "./modules/docker_container"
  docker_container_name = var.docker_container_name
  docker_image          = var.docker_image

  count = local.environment == "dev" ? 1 : 0
}

module "twc_instance" {
  source                  = "./modules/twc_instance"
  twc_token               = var.twc_token
  twc_instance_name       = var.twc_instance_name
  twc_instance_os_name    = var.twc_instance_os_name
  twc_instance_os_version = var.twc_instance_os_version
  twc_instance_preset_id  = var.twc_instance_preset_id
  count = local.environment == "prod" ? 1 : 0
}