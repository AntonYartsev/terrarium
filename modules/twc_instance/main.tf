data "twc_configurator" "configurator" {
  location = var.twc_instance_region
  disk_type = var.twc_instance_disc_type
}

data "twc_os" "os" {
  name = var.twc_instance_os_name
  version = var.twc_instance_os_version
}

resource "twc_server" "twc_instance" {
  name = var.twc_instance_name
  os_id = data.twc_os.os.id

  configuration {
    configurator_id = data.twc_configurator.configurator.id
    disk = var.twc_instance_disk * 1024
    cpu = var.twc_instance_cpu
    ram = var.twc_instance_ram
  }
}