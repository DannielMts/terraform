locals {
  instance_number = lookup(var.instance_number, var.environment)
}

locals{
  common_labels = {
    criadorrrr    = "dannielmartins"
    manageby = "terraform"
    so = "linux"
  }
}