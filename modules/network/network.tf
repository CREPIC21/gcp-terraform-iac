resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = "false"
}

resource "google_compute_firewall" "rules" {
  name          = var.firewall_name
  project       = var.project_id
  network       = google_compute_network.vpc_network.self_link
  description   = "Creates firewall rule targeting tagged instances"
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["rules"]

    allow {
    protocol = "tcp"
    ports    = ["80", "8080"]
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

}

resource "google_compute_subnetwork" "subnet-app" {
  name = var.subnet_name
  region = var.subnet_region
  network = google_compute_network.vpc_network.name
  ip_cidr_range = var.subnet_ip_cidr_range
}