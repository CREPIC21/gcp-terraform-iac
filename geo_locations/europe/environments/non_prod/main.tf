module "network_europe" {
  source       = "../../../../modules/network"
  network_name = "non-production-network"
  firewall_name = "non-production-firewall"
  project_id = var.project_id
  subnet_name = "non-production-subnet"
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

# module "data_europe" {
#   source = "../../../../modules/data"

#   cloud_storage_name = "non-production-cloud-storage"
#   cloud_storage_region = var.region
#   cloud_storage_versioning = true
#   memory_storage_name = "non-production-memory-storage"
#   memory_size_gb = 1
#   memory_store_region = var.region
#   memory_store_vpc = module.network_europe.network_self_link
#   project_id = var.project_id
#   memory_store_tier = "BASIC"

#   sql_database_name   = "non-production-sql-database"
#   sql_database_region = var.region
#   private_ip_address_name = "non-production-private-ip"
#   vpc_name            = module.network_europe.network_name
#   depends_on = [
#     module.network_europe
#   ]
# }