terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=4.30.0"
    }
  }
    backend "gcs" {
    bucket      = "038c1ba196faf11e-bucket-tfstate-eu-non-prod"
    prefix      = ""
    credentials = "../../../../gcp_keys/my-first-gke-project-372214-64ee6b1be0c8.json"
  }
}

provider "google" {
  credentials = var.google_credentials_file_path
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}