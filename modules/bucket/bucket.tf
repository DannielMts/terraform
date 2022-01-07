resource "google_storage_bucket" "remote_state" {
  name          = "bucket-arquivo-de-estado"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 30
    }
    action {
      type = "Delete"
    }
  }
  versioning{
    enabled = true
  }

  labels = merge(
    local.labels_bucket
  )

}


