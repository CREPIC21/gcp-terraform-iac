resource "google_redis_instance" "memory-store-primary" {
  name           = var.memory_storage_name
  memory_size_gb = var.memory_size_gb
  region = var.memory_store_region
  authorized_network = var.memory_store_vpc
  project = var.project_id
  tier = var.memory_store_tier
}