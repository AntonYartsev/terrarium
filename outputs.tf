output "instance_id" {
  value = local.environment == "dev" ? module.docker_container[0] : module.twc_instance[0]
}