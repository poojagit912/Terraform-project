# setup the GCP provider | provider.tf

terraform {
  required_version = ">= 0.12"
}

provider "google" {
  project = var.projectId
  region  = var.gcpRegion
  zone    = var.gcpZone
}
