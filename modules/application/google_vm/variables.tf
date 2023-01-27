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
  default = "test-instance"
}

variable "machine_type" {
  default = "f1-micro"
}

variable "instance_image" {
  default = "debian-cloud/debian-11"
}

variable "instance_network" {
    default = "default"
}

variable "instance_subnetwork" {
  default = "default"
}
