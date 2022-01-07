// Criação de instancia
// Contaminar terraform apply -replace="google_compute_instance.server[1]"
resource "google_compute_instance" "server" {
    
  count = local.instance_number <= 0 ? 0 : local.instance_number
    
  name         = "server-${local.environment}-${count.index}"
  machine_type = lookup(var.instance_type, local.environment)
  zone         = lookup(var.instance_zone, local.environment)

  labels = merge(
    {
      criador = var.criador
      env     = format("%s", local.environment)
    },
    local.common_labels
  )


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {

    }
  }
}