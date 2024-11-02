provider "google" {
  credentials = file("google.json")
  project     = var.project
  region      = var.region
  zone        = var.zone

}

terraform {
  backend "gcs" {
    bucket  = "devops-sample-bucket-my"
    prefix  = "terraform/state"
  }
}

