data "google_compute_network" "vpc_network" {
  name = var.vpc_name
}

resource "google_compute_global_address" "private_ip_address" {
  name          = var.private_ip_address_name
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  prefix_length = 16
  network       = data.google_compute_network.vpc_network.id
}

resource "google_service_networking_connection" "private_vpc_connection" {
  network       = data.google_compute_network.vpc_network.id
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_ip_address.name]
}

resource "google_sql_database_instance" "main" {
  name             = var.sql_database_name
  database_version = var.sql_database_version
  region           = var.sql_database_region
  depends_on = [google_service_networking_connection.private_vpc_connection]

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.

    tier = var.sql_database_tier
    ip_configuration {
      ipv4_enabled    = false
      private_network = data.google_compute_network.vpc_network.id
    }
  }
  lifecycle {
    prevent_destroy = false
  }
  deletion_protection = false
}