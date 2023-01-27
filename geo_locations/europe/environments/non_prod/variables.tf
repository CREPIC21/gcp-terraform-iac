variable "google_credentials_file_path" {
  default = "../../../../gcp_keys/my-first-gke-project-372214-64ee6b1be0c8.json"
}

variable "project_id" {
  default = "my-first-gke-project-372214"
}

variable "region" {
  default = "europe-west1"
}

variable "zone" {
  default = "europe-west1-b"
}

variable "instance_name" {
  default = "non-production-instance"
}


variable "machine_type" {
  default = "f1-micro"
}

variable "instance_image" {
  default = "debian-cloud/debian-11"
}

variable "network_name" {
  default = "non-production-network"
}

variable "firewall_name" {
  default = "non-production-firewall"
}

variable "subnet_name" {
  default = "non-production-subnet"
}

variable "sql_database_name" {
  default = "non-production-sql-database"
}

variable "sql_database_version" {
  default = "POSTGRES_14"
}

variable "sql_database_tier" {
  default = "db-f1-micro"
}

variable "private_ip_address_name" {
  default = "non-production-private-ip"
}

variable "memory_storage_name" {
  default = "non-production-memory-storage"
}

variable "memory_size_gb" {
  default = 1
}

variable "memory_store_tier" {
  default = "BASIC"
}

