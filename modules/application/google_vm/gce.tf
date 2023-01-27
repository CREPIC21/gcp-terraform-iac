resource "google_compute_instance" "europe_instance" {
  name         = var.instance_name
  machine_type = var.machine_type
  tags         = ["rules"]

  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }
  allow_stopping_for_update = true

  
  metadata_startup_script = file("${path.module}/startup.sh")

  network_interface {
    # A default network is created for all GCP projects
    # network = google_compute_network.vpc_network.self_link
    # network = var.vpc
    network = var.instance_network
    # subnetwork = google_compute_subnetwork.subnet.self_link
    subnetwork = var.instance_subnetwork
    access_config {
        # nat_ip = google_compute_address.static_main.address
        # nat_ip = var.static_ip
    }
  }

  #   service_account {
  #   # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
  #   email  = "terraform-udemy@my-first-gke-project-372214.iam.gserviceaccount.com"
  #   scopes = ["cloud-platform"]
  # }
}