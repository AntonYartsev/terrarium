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