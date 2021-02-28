provider "google" {
  credentials = file("auth/credentials.json")
  project = var.gcp_project_id
  region  = var.my_region
}

resource "google_storage_bucket" "bucket_name_raw" {
  name   = var.bucket_name_raw
  location = var.my_region
  force_destroy = true
}
