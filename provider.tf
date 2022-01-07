provider "google" {
  project     = "terraform-332021"
  region      = "us-central1"
  credentials = "terraform.json"
}

module "bucket" {
  source = "./modules/bucket"
  
}