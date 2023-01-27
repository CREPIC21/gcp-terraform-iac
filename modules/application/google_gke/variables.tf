variable "gke_cluster_name" {
    default = "gke"
}

variable "gke_cluster_zone" {
  default = "europe-west1-b"
}

variable "gke_cluster_vpc" {
    default = "default"
}

variable "gke_cluster_subnet" {
    default = "default"
}

variable "google_container_node_pool_name" {
    default = "node-pool-name"
}

variable "google_container_node_pool_zone" {
    default = "europe-west1-b"
}

variable "gke_num_nodes" {
    default = "2"
    description = "number of gke nodes"
}

variable "node_machine_type" {
    default = "n1-standard-1"
}