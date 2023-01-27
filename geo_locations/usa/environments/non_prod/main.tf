module "network_europe" {
    source = "../../../../modules/network"
    network_name = "gke-non-production-network"
    firewall_name = "gke-non-production-firewall"
    project_id = var.project_id
    subnet_name = "gke-non-production-subnet"
    subnet_region = var.region
}

module "usa_gke" {
    source = "../../../../modules/application/google_gke"
    gke_cluster_name = "gke-nonprod"
    gke_cluster_zone = var.zone
    gke_cluster_vpc = module.network_europe.network_self_link
    gke_cluster_subnet = module.network_europe.subnet_self_link
    depends_on = [
      module.network_europe
    ]
    google_container_node_pool_name = "gke-non-prod-node-pool"
    google_container_node_pool_zone = var.zone
}

