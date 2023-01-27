module "network_usa" {
    source = "../../../../modules/network"
    network_name = var.network_name
    firewall_name = var.firewall_name
    project_id = var.project_id
    subnet_name = var.subnet_name
    subnet_region = var.region
}

module "usa_gke" {
    source = "../../../../modules/application/google_gke"
    gke_cluster_name = var.gke_cluster_name
    gke_cluster_zone = var.zone
    gke_cluster_vpc = module.network_usa.network_self_link
    gke_cluster_subnet = module.network_usa.subnet_self_link
    depends_on = [
      module.network_usa
    ]
    google_container_node_pool_name = var.google_container_node_pool_name
    google_container_node_pool_zone = var.zone
}

