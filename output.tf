// Nome do server
output "servidores" {
  value = google_compute_instance.server[*].zone
}

output "qtde_iniciada" {
value = {
    for k, v in google_compute_instance.server :  k => v.id
}
}
