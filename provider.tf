provider "google" {
  project     = "terraform-332021"
  region      = "us-central1"
  credentials = "terraform.json"
}

module "dev" {
  source = "./modules/dev"
  
}
module "prod" {
  source = "./modules/prod"
  
}