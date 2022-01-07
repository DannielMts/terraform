resource "google_storage_bucket" "auto-expire" {
  name          = "bucket-arquivo-de-estado"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}


resource "google_storage_bucket_object" "tfstate" {
  depends_on = [google_storage_bucket.auto-expire]
  name   = "arquivoDEestado"
  source = "terraform.tfstate.backup"
  bucket = "bucket-arquivo-de-estado"
}


