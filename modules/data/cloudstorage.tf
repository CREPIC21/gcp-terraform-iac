# resource "random_id" "bucket_prefix" {
#   byte_length = 8
# }

# resource "google_storage_bucket" "cloud-storage-primary" {
#   name          = "${random_id.bucket_prefix.hex}-bucket-tfstate-${var.cloud_storage_name}"
#   location      = var.cloud_storage_region
#   force_destroy = true
#   uniform_bucket_level_access = true

#   lifecycle_rule {
#     condition {
#       age = 3
#     }
#     action {
#       type = "SetStorageClass"
#       storage_class = "REGIONAL"
#     }
#   }

# versioning {
#   enabled = var.cloud_storage_versioning
# }
# }