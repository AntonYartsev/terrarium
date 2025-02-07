# Terrarium
Creates a basic instance (1 x 3.3 GHz CPU, 1 GB RAM, 15 GB NVMe) on TimeWeb Cloud, assigns an IP address, injects the host key, and generates an inventory.ini file (from inventory.tmpl template). Initially, a development workspace option was planned (but not yet implemented) for local testing.

### Prepare vars
```bash
touch terraform.tfvars
nano terraform.tfvars
```
```bash
twc_instance_name       = "agent-000"
twc_instance_os_name    = "ubuntu"
twc_instance_os_version = "24.04"
twc_instance_preset_id  = 4795
twc_token               = ""
# docker_container_name = "agent-000"
# docker_image          = "ubuntu:latest"
# docker_image          = ""
# docker_host           = "tcp://192.168.88.237:2375"
```
### Init
```bash
terraform init

terraform workspace new dev
terraform workspace new prod

terraform workspace select prod
```

### Deploy
```bash
terraform plan apply
```

