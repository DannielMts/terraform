provider "google" {
  project     = "terraform-332021"
  region      = "us-central1"
  credentials = "terraform.json"
}

terraform {
  backend "gcs" {
    bucket  = "bucket-arquivo-de-estado"
    prefix  = "state"
    credentials = "terraform.json"
  }
}

