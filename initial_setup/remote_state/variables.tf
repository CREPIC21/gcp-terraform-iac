variable "google_credentials_file_path" {
  default = "../../gcp_keys/my-first-gke-project-372214-64ee6b1be0c8.json"
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

variable "bucket_names" {
    type    = set(string)
    default = ["eu-non-prod", "eu-prod", "usa-non-prod", "usa-prod"]
}
