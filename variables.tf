variable "twc_instance_name" {
  type = string
}

variable "twc_instance_os_name" {
  type = string
}

variable "twc_instance_os_version" {
  type = string
}

variable "twc_instance_preset_id" {
  type = number
}

variable "twc_token" {
  type      = string
  sensitive = true
}

variable "docker_host" {
  type = string
}

variable "docker_container_name" {
  type = string
}

variable "docker_image" {
  type = string
}
