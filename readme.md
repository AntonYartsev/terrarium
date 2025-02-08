# Terrarium
Creates a basic instance (1 x 3.3 GHz CPU, 1 GB RAM, 15 GB NVMe) on TimeWeb Cloud, assigns an IP address, injects the host key, and generates an inventory.ini file (from inventory.tmpl template).
~~[Initially, a development workspace option was planned (but not yet implemented) for local testing.](https://github.com/AntonYartsev/terrarium/commit/58649120594e4735cc147dbb5d24ea8cdfb79df2)~~

### Prepare vars
```bash
touch terraform.tfvars
nano terraform.tfvars
```
```bash
twc_instance_name       = "agent-000"
twc_instance_os_name    = "ubuntu"
twc_instance_os_version = "24.04"
twc_instance_preset_id  = 4795 # 1x3.3GHz, 1GB RAM, 15 GB NVMe, RU location
twc_token               = "" # timeweb token here
```
### Init
```bash
terraform init
```

### Deploy
```bash
terraform plan apply
```

