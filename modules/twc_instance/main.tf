# определим какую os ставим
data "twc_os" "os" {
  name = var.twc_instance_os_name
  version = var.twc_instance_os_version
}

# закидываем свой публичный ключ в timeweb
resource "twc_ssh_key" "master-key" {
  name = "Host rsa key"
  body = file("~/.ssh/id_rsa.pub")
}

# создаем master агента и привязываем к нему свой ключ
resource "twc_server" "agent-000" {
  name = var.twc_instance_name
  os_id = data.twc_os.os.id
  ssh_keys_ids = [twc_ssh_key.master-key.id]
  preset_id = var.twc_instance_preset_id
}

# забиваем публичный ip для master агента
resource "twc_server_ip" "agent-000-ip" {
  source_server_id = twc_server.agent-000.id
  type = "ipv4"
}

# генерируем инвентарь для ansible
resource "local_file" "ansible_inventory" {
  content = templatefile("${path.module}/inventory.tmpl", {
    instance_ips = {
      "twc_instance" = twc_server_ip.agent-000-ip.ip
    }
  })
  filename = "./inventory.ini"
}
