module "network_europe" {
  source       = "../../../../modules/network"
  network_name = var.network_name
  firewall_name = var.firewall_name
  project_id = var.project_id
  subnet_name = var.subnet_name
  subnet_region = var.region
}

module "google_europe_vm" {
    source = "../../../../modules/application/google_vm"
    instance_name = var.instance_name
    machine_type = var.machine_type
    instance_image = var.instance_image
    instance_network = module.network_europe.network_self_link
    instance_subnetwork = module.network_europe.subnet_self_link
    depends_on = [
      module.network_europe
    ]
}

module "data_europe" {
  source = "../../../../modules/data"

  memory_storage_name = var.memory_storage_name
  memory_size_gb = var.memory_size_gb
  memory_store_region = var.region
  memory_store_vpc = module.network_europe.network_self_link
  project_id = var.project_id
  memory_store_tier = var.memory_store_tier

  sql_database_name   = var.sql_database_name
  sql_database_version = var.sql_database_version
  sql_database_region = var.region
  sql_database_tier = var.sql_database_tier
  private_ip_address_name = var.private_ip_address_name
  vpc_name            = module.network_europe.network_name
  depends_on = [
    module.network_europe
  ]
}