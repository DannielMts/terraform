// Nome do server
output "servidores" {
  value = google_compute_instance.server[*].name
}

output "bucket" {
    value = google_storage_bucket.auto-expire.name
}