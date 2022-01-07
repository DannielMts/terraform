locals {
  instance_number = lookup(var.instance_number, local.environment)
}

locals{
  common_labels = {
    criadorrrr    = "dannielmartins"
    manageby = "terraform"
    so = "linux"
  }
}

locals {
  environment = terraform.workspace == "default" ? "dev" : terraform.workspace
}