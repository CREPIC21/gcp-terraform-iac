variable "google_credentials_file_path" {
  default = "../../../../gcp_keys/my-first-gke-project-372214-64ee6b1be0c8.json"
}

variable "project_id" {
  default = "my-first-gke-project-372214"
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}

variable "network_name" {
  default = "gke-non-production-network"
}

variable "firewall_name" {
  default = "gke-non-production-firewall"
}

variable "subnet_name" {
  default = "gke-non-production-subnet"
}

variable "gke_cluster_name" {
  default = "gke-nonprod"
}

variable "google_container_node_pool_name" {
  default = "gke-non-prod-node-pool"
}

