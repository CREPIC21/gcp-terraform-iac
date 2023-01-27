variable "memory_storage_name" {
  default = "memory-storage"
}

variable "memory_size_gb" {
  default = 1
}

variable "memory_store_vpc" {
  default = "default"
}

variable "memory_store_region" {
    default = "default"
}

variable "project_id" {
  default = "test-project"
}

variable "memory_store_tier" {
  default = "BASIC"
}

variable "sql_database_name" {
  default = "sql-database"
}

variable "sql_database_region" {
  default = "europe-west1"
}

variable "vpc_name" {
  default = "vpc-name"
}

variable "private_ip_address_name" {
  default = "private-ip-name"
}