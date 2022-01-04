// Criação de instancia
resource "google_compute_instance" "server" {
    
  count = local.instance_number <= 0 ? 0 : local.instance_number
    
  name         = "server-${var.environment}-${count.index}"
  machine_type = lookup(var.instance_type, var.environment)
  zone         = "us-east1-b"

  labels = merge(
    var.instance_labels,
    {
      criador = var.criador
      env     = format("%s", var.environment)
    },
    local.common_labels
  )


  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }

  network_interface {
    network = "default"
    access_config {

    }
  }
}