module "remote_state_bucket" {
  source = "../../modules/remote_storage"
  for_each = var.bucket_names
  cloud_storage_name = each.key
  cloud_storage_region = var.region
}